require "bundler/inline"

gemfile do
	source "https://rubygems.org"

	require "json"
	require "pathname"
	require "date"

	gem "pry"
	gem "json-patch"
	gem "jsondiff"
	gem "activesupport", :require => ["active_support/core_ext/hash", "active_support/core_ext/string/inflections"]
end

SORT_ORDER = %w[name description return_type return_description deprecated args]

BUILD_DIR = Pathname.new("build/")
SRC_DIR = Pathname.new("src/")

globals = JSON.parse((SRC_DIR + "default_docs.json").read)
extra_docs = JSON.parse((SRC_DIR + "extra_docs.json").read)

globals = JSON::Patch.new(globals, extra_docs["globals_patch"]).call

extra_docs["globals_merge"].each do |global, funcs|
	funcs.each do |func, func_val|
		next unless globals.dig(global, func)

		diff = JsonDiff.generate(globals.dig(global, func), func_val)
		puts "Overwriting global #{global}.#{func} - this should use globals_patch instead (#{diff.to_json})"
	end
end

globals.deep_merge!(extra_docs["globals_merge"])
globals_replacements = extra_docs["globals_replacements"]
globals_deprecated_regex = Regexp.new(extra_docs["globals_deprecated_regex"])
globals_optional_regex = Regexp.new(extra_docs["globals_optional_regex"])
globals_type_description_regex = Regexp.new(extra_docs["globals_type_description_regex"])

class ReturnTypes
	def initialize()
		@regexes = {
			"number (menu item)" => [/ui\.new_.*/, "ui.reference"],
			"number (texture id)" => [/renderer\.load_.*/],
			"any" => ["ui.get", "entity.get_prop"],
			"number, number" => ["ui.mouse_position", "client.trace_line", "client.trace_bullet"],
			"number, number, number" => ["renderer.world_to_screen"],
			"number" => [/.*get_(float|int)/, /bit\..*/, "client.userid_to_entindex"],
			"string" => [/.*name/, /.*get_string/, "entity.get_steam64"],
			"number (entindex)" => [/entity\.get_(game_rules|local_player|player_resource|player_weapon)/],
			"table (entindex)" => [/entity\.get_(all|players)/],
			"table (material object)" => [/materialsystem((?!override).)+_material$/],
			"table (material objects)" => [/materialsystem.+_materials/]
		}

		@types = {
			"boolean" => "boolean",
			"true" => "boolean",
			"false" => "boolean",
			"integer" => "number",
			"float" => "number",
			"damage" => "number",
			"number" => "number",
			"seconds" => "number",
			"table" => "table",
			"width, height" => "number, number",
			"x, y, z" => "number, number, number",
			"x, y" => "number, number",
			"x1, y1, x2, y2, alpha_multiplier" => "number, number, number, number, number",
			"y screen coordinate" => "number"
		}
	end

	def get_return_type(name, data)
		@regexes.each do |regex_name, regexes|
			return regex_name if regexes.any? {|regex| regex.match? name}
		end

		# if data.key? "description"
		# 	@regexes_desc.each do |regex_name, regexes|
		# 		return regex_name if regexes.any? {|regex| regex.match? data["description"]}
		# 	end
		# end

		types = []
		if data.key?("description") && desc = data["description"].dup.downcase
			@types.each do |type, type_str|
				if desc.include?(type) && desc.include?("returns")
					types << type_str
					desc.gsub!(type, "")
				end
			end
			return types[0] if types.uniq.length == 1
		end
	end
end

class ArgumentTypes
	def initialize()
		@argument_types = {
			"callback" => "function",
			"tab" => "string (menu tab)",
			"container" => "string (menu container)",
			"name" => "string (menu item)",
			"field" => "string (menu item)",
			"classname" => "string (entity classname)",
			"flags" => "string (text flags)",
			"percentage" => "number (0 - 1)",
			"pitch" => "number (-90 - 90)",
			"yaw" => "number (-180 - 180)",
			"id" => "number (texture id)",
			"userid" => "number (user id)",
			"thickness" => "number (px)",
			"start_degrees" => "number (0 - 360)",
			"propname" => "string (netprop)",
			"tooltips" => "table",
			"items" => "table",
			"contents" => "string",
		}
		argument_types_array = {
			"number (entindex)" => ["ent", "entindex", "skip_player", "player", "from_player", "skip_entindex"],
			"number (hitbox id)" => ["hitbox", "hitboxes"],
			"number (hitgroup id)" => ["hitgroup"],
			"number (material var flag)" => ["material_var_flag"],
			"number (model index)" => ["model_index"],
			"number (virtual key code)" => ["default_hotkey"],
			"number" => ["array_index", "duration", "line_offset", "tick", "minimum", "maximum", "damage", "delay", "min", "max", "init_value", "radius", "scale", "max_width", "r", "g", "b", "a", "r1", "g1", "b1", "a1", "r2", "g2", "b2", "a2", "key"],
			"boolean" => ["enemies_only", "show_tooltip", "inline", "visible", "ltr", "skip_players", "force_load"],
			"string" => ["event_name", "msg", "cmd", "unit", "material", "materials", "module_name", "interface_name", "path", "partial_path"],
			"string (shader param)" => ["shader_param"],
			"string (panorama root panel)" => ["panel"],
		}
		argument_types_array.each do |argument_type, argument_names|
			argument_names.each do |argument_name|
				@argument_types[argument_name] = argument_type
			end
		end

		@docs_types_to_lua_types = {
			"String" => "string",
			"Float" => "number (float)",
			"Integer" => "number (integer)"
		}

		@require_all_args = {
			"number (world coordinate)" => [["x", "y", "z"], ["from_x", "from_y", "from_z"], ["to_x", "to_y", "to_z"]],
			"number (screen coordinate)" => [["x", "y"], ["xa", "ya", "xb", "yb"], ["x0", "y0", "x1", "y1", "x2", "y2"]],
			"number (px)" => [["width", "height"], ["w"], ["h"]]
		}
	end

	def get_argument_type(arg, data)
		return @argument_types[arg["name"]] if @argument_types.key? arg["name"]

		@docs_types_to_lua_types.each do |type, new_type|
			return new_type if arg["description"].start_with? type
		end

		@require_all_args.each do |type, required_args_sets|
			required_args_sets.each do |required_args|
				return type if required_args.include?(arg["name"]) && required_args.all? {|arg_tmp| (data["args"].map {|arg_tmp2| arg_tmp2["name"]}).include? arg_tmp}
			end
		end

		if arg["name"] == "item" && (arg["description"].include?("special value") || arg["description"].include?("reference"))
			return arg["description"].include?("existing") ? "number (custom menu reference)" : "number (menu reference)"
		end

		return "any" if arg["name"] == "value"

		nil
	end
end

# Print out undocumented globals
if (SRC_DIR + "real_globals.json").file?
	real_globals = JSON.parse((SRC_DIR + "real_globals.json").read)
	real_globals.each do |global, keys|
		keys.each do |key, _|
			puts "#{global}.#{key}: Undocumented global" if (!globals.key?(global) || !globals[global].key?(key)) && !key.match(globals_deprecated_regex)
		end
	end
end

argtypes = ArgumentTypes.new
rettypes = ReturnTypes.new

# Generate data for each global
globals = globals.sort.to_h
globals.each do |global, functions|
	functions.each do |name, data|
		data["name"] ||= "#{global}.#{name}"

		unless data.key? "return_type"
			return_type = rettypes.get_return_type(data["name"], data)
			data["return_type"] = return_type unless return_type.nil?
		end
		if data.key? "return_type"
			if match = data["return_type"].match(globals_type_description_regex)
				data["return_type"] = match[1]
				data["return_description"] = match[2]
			end
		else
			puts "#{global}.#{name}: No return type"
		end
		data["deprecated"] = true if !data.key?("deprecated") && data["name"].match?(globals_deprecated_regex)

		if data.key?("args") && !data["args"].empty?
			data["args"].each do |argument|
				description = argument["description"]
				globals_replacements["function_arg_descriptions"].each do |orig, rep|
					description.gsub!(orig, rep)
				end

				argument["optional"] = true if !argument.key?("optional") && description.match?(globals_optional_regex)
				if argument["optional"]
					description.sub!(globals_optional_regex, "")

					parts = description.split
					description.replace [parts[0].capitalize, *parts[1..]].join(" ")
				end

				type_info = argtypes.get_argument_type(argument, data)
				argument["type"] ||= type_info unless type_info.nil?

				if argument.key?("type") && match = argument["type"].match(globals_type_description_regex)
						argument["type"] = match[1]
						argument["type_description"] = match[2]
					end

				puts "#{global}.#{name}: Type of argument #{argument.inspect} unknown" if !argument.key?("type") && argument["name"] != "..."
			end
		else
			data["args"] = []
		end

		if data.key?("description") && data["description"] != "None."
			globals_replacements["function_descriptions"].each do |orig, rep|
				data["description"].gsub!(orig, rep)
			end
		else
			puts "#{global}.#{name}: Missing description"
		end

		data.replace(Hash[data.sort_by{|k, _| SORT_ORDER.index(k) || SORT_ORDER.length+k.length}])
	end
	functions.replace(functions.sort.to_h)
end

# Write finished globals.json
BUILD_DIR.mkpath
(BUILD_DIR + "globals.json").write(JSON.pretty_generate(globals))
