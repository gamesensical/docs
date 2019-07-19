require "bundler/inline"

gemfile do
	source "https://rubygems.org"

	require "json"
	require "pathname"

	gem "pry"
	gem "json-patch"
	gem "activesupport", :require => "active_support/core_ext/hash"
end

ARGS_AS_TABLE = true
SHORT_ARG_TYPES = true

extra_docs = JSON.parse(File.read("extra_docs.json"))
globals_descriptions = extra_docs["globals_descriptions"]
globals_examples = extra_docs["globals_examples"]

globals = JSON.parse(File.read("default_docs.json"))
globals.deep_merge!(extra_docs["globals_merge"])
globals = JSON::Patch.new(globals, extra_docs["globals_patch"]).call

globals_path = Pathname.new("docs/globals/")
globals_path.children.each do |child|
	child.rmtree if child.basename.to_s.downcase == child.basename.to_s
end

props_path = Pathname.new("docs/netprops/")
props_path.children.each do |child|
	child.rmtree unless child.basename.to_s.downcase == "readme.md"
end

class ReturnTypes
	def initialize()
	end

	def get_return_type(name, data)
		return nil
	end
end

class ArgumentTypes
	def initialize()
		@argument_types = {
			"callback" => "function",
			"tab" => "string (menu tab)",
			"container" => "string (menu container)",
			"name" => "string (menu item)",
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
			"contents" => "string",
		}
		argument_types_array = {
			"number (entindex)" => ["ent", "entindex", "skip_player", "player", "from_player", "skip_entindex"],
			"number (hitbox id)" => ["hitbox", "hitboxes"],
			"number (hitgroup id)" => ["hitgroup"],
			"number" => ["array_index", "duration", "line_offset", "tick", "minimum", "maximum", "damage", "delay", "min", "max", "init_value", "radius", "scale", "max_width", "r", "g", "b", "a", "r1", "g1", "b1", "a1", "r2", "g2", "b2", "a2", "key"],
			"boolean" => ["enemies_only", "show_tooltip", "inline", "visible", "ltr"],
			"string" => ["event_name", "msg", "cmd", "unit", "material", "materials"],
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

	def get_argument_name(arg, data)
		if @argument_types.key? arg["name"]
			return @argument_types[arg["name"]]
		end

		@docs_types_to_lua_types.each do |type, new_type|
			if arg["description"].start_with? type
				return new_type
			end
		end

		@require_all_args.each do |type, required_args_sets|
			required_args_sets.each do |required_args|
				return type if required_args.include?(arg["name"]) && required_args.all? {|arg_tmp| (data["args"].map {|arg_tmp2| arg_tmp2["name"]}).include? arg_tmp}
			end
		end

		if arg["name"] == "item" && (arg["description"].include?("special value") || arg["description"].include?("reference"))
			return (arg["description"].include? "existing") ? "number (custom menu reference)" : "number (menu reference)"
		end

		return "any" if arg["name"] == "value"

		return nil
	end

	def get_argument_description(arg, data)
		description = arg["description"]

		description += "[]()" if arg["name"] == "event_name"

		return description
	end
end

deprecated_regex = /(draw_.{1,}|world_to_screen|get_cvar|set_cvar)/

# Print out undocumented globals
if File.file? "real_globals.json"
	real_globals = JSON.parse(File.read("real_globals.json"))
	real_globals.each do |global, children|
		children.each do |child, _|
			puts "Undocumented global: #{global}.#{child}" if (!globals.key?(global) || !globals[global].key?(child)) && (!child.match(deprecated_regex))
		end
	end
end

# Generate markdown documentation for each global
globals = globals.sort.to_h
globals.each do |global, functions|
	contents = []
	if globals_descriptions.key? global
		contents << "---"
		contents << "description: #{globals_descriptions[global]}"
		contents << "---"
		contents << ""
	end
	contents << "# #{global.capitalize}"
	contents << ""

	if globals_examples.key? global
		contents << "### Example#{globals_examples[global].length > 1 ? "s" : ""}:"
		contents << ""
		contents << "{% code-tabs %}"

		globals_examples[global].each do |example|
			contents << "{% code-tabs-item #{example.key?("title") ? " title=\"#{example["title"]}\"" : ""}%}"
			contents << example["contents"].join("\n")
			contents << ""
			contents << "{% endcode-tabs-item %}"
		end

		contents << "{% endcode-tabs %}"
		contents << ""
	end

	contents << "### Functions:"

	argtypes = ArgumentTypes.new()
	rettypes = ReturnTypes.new()

	# put object oriented functions last. ghetto shit lol
	functions = functions.sort_by do |name, data|
		(data.key?("name") && data["name"].include?(":")) ? "\xFF#{name}" : name
	end.to_h

	functions.each do |name, data|
		arg_names = []
		if data.key? "args"
			data["args"].each do |arg|
				arg_text = arg["name"]
				type_info = argtypes.get_argument_name(arg, data)
				if !type_info.nil?
					type_info = type_info.split(" ")[0] if SHORT_ARG_TYPES
					arg_text += ": #{type_info}"
				elsif arg["name"] != "..."
					puts "Type of arg #{arg.inspect} unknown"
				end
				arg_names << arg_text
			end
		end

		func_text = "#{global}.#{name}(#{arg_names.join(", ")})"
		return_type = rettypes.get_return_type(name, data)

		if !return_type.nil?
			func_text += ": #{return_type}"
		end

		contents << "#### #{data["name"] || "#{global}.#{name}"}"
		contents << ""
		contents << "`#{func_text}`"
		contents << ""

		if data.key? "hint"
			contents << "{% hint style=\"#{data["hint"]["style"]}\" %}"
			contents << "#{data["hint"]["text"]}"
			contents << "{% endhint %}"
		end

		if data.key?("args") && data["args"].length > 0
			# contents << "  * **Arguments:**"
			# contents << "  "

			if ARGS_AS_TABLE
				contents << "Argument | Description"
				contents << "-------- | -----------"
			end

			data["args"].each do |argument|
				description = argument["description"]
				optional = description.downcase.start_with? "optional "
				description = description.sub("Optional. ", "").sub("Optional ", "") if optional
				contents << (ARGS_AS_TABLE ? "  **#{argument["name"]}** | #{description}" : "  - **#{argument["name"]}**: #{description}")
			end
			contents << ""
		end

		if data.key?("description") && data["description"] != "None."
			contents << "#{data["description"]}"
			contents << ""
		end

		if data.key? "page-ref"
			contents << "{% page-ref page=\"#{data["page-ref"]}\" %}"
		end

		contents << ""
	end

	(globals_path + "#{global}.md").write(contents.join("\n"))
end

# Write finished docs.json
File.write("docs/docs.json", globals.to_json)

# Write formatted list of globals to SUMMARY.md
globals_string = ""
globals.keys.each do |global|
	globals_string += "  * [#{global.capitalize}](globals/#{global}.md)\n"
end

# Write netprops
classes = Hash.new
current_class = nil
current_table = nil
current_table_type = nil
current_table_nums = []
number_regex = /^[0-9]*$/
File.open('props.txt', 'r').each do |line|
	next if line == "" || line.start_with?("//")
	unless line.start_with? " "
		current_class = line.split(" ")[0]
		classes[current_class] = []
		next
	end

	cleaned = line.gsub(" ", "")

	current_table_new = nil
	table_finished = true

	if cleaned.start_with? "Member:"
		prop = line.split("Member: ")[1].split(" (offset ")[0]
		type = line.split("(type ")[1].split(")")[0]

		if number_regex.match? prop
			current_table_type = type if current_table_type.nil?
			current_table_nums << prop.to_i
			table_finished = false
		else
			classes[current_class] << "#{prop}: #{type}" unless number_regex.match? current_table
		end
	elsif cleaned.start_with? "Table:"
		current_table_new = line.split("Table: ")[1].split(" (offset ")[0]
	end

	if table_finished && !current_table.nil? && current_table_nums.length > 0
		classes[current_class].insert(classes[current_class].length > 1 ? -2 : -1, "#{current_table}: #{current_table_type}[#{current_table_nums.min == current_table_nums.max ? current_table_nums.min.to_s : "#{current_table_nums.min}-#{current_table_nums.max}"}]")
		current_table = nil
		current_table_type = nil
		current_table_nums = []
	end
	current_table = current_table_new if !current_table_new.nil?
end

netprops_string = ""
classes.each do |classname, props|
	next if classname.nil?
	(props_path + "#{classname}.md").write("#{classname}\n\n" + props.join("\n\n"))

	netprops_string += "  * [#{classname.capitalize}](netprops/#{classname}.md)\n"
end

f = File.open("docs/SUMMARY.md", "w")
f << File.read("docs/SUMMARY_template.md").gsub("{% globals %}", globals_string.chomp).gsub("{% netprops %}", netprops_string.chomp)
f.close
