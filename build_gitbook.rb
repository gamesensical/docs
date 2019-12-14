require "bundler/inline"

gemfile do
	source "https://rubygems.org"

	require "json"
	require "pathname"
	require "fileutils"
	require "date"

	gem "pry"
	gem "activesupport", :require => ["active_support/core_ext/hash", "active_support/core_ext/string/inflections"]
	gem "mustache"
end

SHORT_ARG_TYPES = true
ARGS_AS_TABLE = true

BUILD_DIR = Pathname.new("build/")
SRC_DIR = Pathname.new("src/")

output_dir = BUILD_DIR + "gitbook"
globals_dir = output_dir + "globals"
props_dir = output_dir + "netprops"

FileUtils.rm_r(output_dir) if output_dir.directory?
output_dir.mkpath
FileUtils.cp_r(SRC_DIR + "gitbook", BUILD_DIR)

globals = JSON.parse((BUILD_DIR + "globals.json").read)
extra_docs = JSON.parse((SRC_DIR + "extra_docs.json").read)
globals_descriptions = extra_docs["globals_descriptions"]
globals_examples = extra_docs["globals_examples"]
globals_replacements = extra_docs["globals_replacements"]

globals.sort.to_h.each do |global, functions|
	contents = []
	if globals_descriptions.key? global
		contents << "---"
		contents << "description: #{globals_descriptions[global]}"
		contents << "---"
		contents << ""
	end
	contents << "# #{global}"
	contents << ""

	contents << "### Functions:"

	functions = functions.sort_by do |name, data|
		(data.key?("name") && data["name"].include?(":")) ? "\xFF#{name}" : name
	end.to_h

	functions.each do |name, data|
		arg_names = ""
		if data.key? "args"
			data["args"].each_with_index do |arg, i|
				arg_text = arg["name"]
				arg_text += ": #{SHORT_ARG_TYPES ? arg["type"].split(" ")[0] : arg["type"]}" if arg.key? "type"
				arg_text = i == 0 ? "#{arg_text}" : ", #{arg_text}"
				arg_names << (arg["optional"] ? ("[#{arg_text}]#{(i == data["args"].length-1) ? "" : " "}") : arg_text)
			end
		end

		func_text = "`#{data["name"]}(#{data["all_optional"] ? "[#{arg_names}]" : arg_names})`"
		func_text << ": #{data["return_type"]}#{data.key?("return_description") ? " (#{data["return_description"]})" : ""}" if data.key? "return_type"

		func_name = data["name"] || "#{global}.#{name}"
		func_name = func_name.include?(":") ? (":" + func_name.split(":").last) : func_name

		contents << "#### #{func_name}"
		contents << ""
		contents << func_text
		contents << ""

		if data.key? "hint"
			contents << "{% hint style=\"#{data["hint"]["style"]}\" %}"
			contents << "#{data["hint"]["text"]}"
			contents << "{% endhint %}"
		end

		if data.key?("args") && data["args"].length > 0
			if ARGS_AS_TABLE
				contents << "Argument | Type | Description"
				contents << "-------- | ---- | -----------"
			else
				contents << "  * **Arguments:**"
				contents << "  "
			end

			data["args"].each do |argument|
				description = argument["description"]

				globals_replacements["function_arg_descriptions"].each do |orig, rep|
					description.gsub!(orig, rep)
				end

				contents << if ARGS_AS_TABLE
					"  **#{argument["name"]}** | #{"#{argument["type"]}#{argument.key?("type_description") ? " (#{argument["type_description"]})" : ""}" || ""} | #{description}"
				else
					"  - **#{argument["name"]}**: #{description}"
				end

			end
			contents << ""
		end

		if data.key?("description") && data["description"] != "None."
			description = data["description"]

			globals_replacements["function_descriptions"].each do |orig, rep|
				description.gsub!(orig, rep)
			end

			contents << "#{description}"
			contents << ""
		else
			puts "#{global}.#{name} has no description"
		end

		if data.key? "page-ref"
			contents << "{% page-ref page=\"#{data["page-ref"]}\" %}"
		end

		contents << ""
	end

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

	(globals_dir + "#{global}.md").write(contents.join("\n"))
end

# Generate netprops docs

# Write netprops
classes = Hash.new
classes_type = Hash.new
current_class = nil
current_table = nil
current_table_type = nil
first_line = nil
current_table_nums = []
number_regex = /^[0-9]*$/

(SRC_DIR + "props.txt").open("r").each do |line|
	first_line ||= line
	next if line == "" || line.start_with?("//")
	unless line.start_with? " "
		current_class = line.split(" ")[0]
		classes[current_class] = []
		classes_type[current_class] = line.split("(type ")[1].split(")")[0] rescue nil
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
			classes[current_class] << {"name" => prop, "type" => type} unless number_regex.match? current_table
		end
	elsif cleaned.start_with? "Table:"
		current_table_new = line.split("Table: ")[1].split(" (offset ")[0]
	end

	if table_finished && !current_table.nil? && current_table_nums.length > 0
		classes[current_class].insert(classes[current_class].length > 1 ? -2 : -1, {"name" => current_table, "type" => "#{current_table_type}[#{current_table_nums.min == current_table_nums.max ? current_table_nums.min.to_s : "#{current_table_nums.min}-#{current_table_nums.max}"}]"})
		current_table = nil
		current_table_type = nil
		current_table_nums = []
	end
	current_table = current_table_new if !current_table_new.nil?
end

def get_group(classname)
	weapon_classnames = ["CAK47", "CDEagle", "CFists", "CFlashbang", "CKnife", "CKnifeGG", "CMelee", "CC4", "CSCAR17", "CTablet", "CBreachCharge", "CBumpMine", "CSnowball", "CEconEntity"]
	important_classnames = ["CCSPlayer", "CCSPlayerResource", "CCSGameRulesProxy"]

	return "Important" if important_classnames.include? classname
	return "Temp Entities" if classname.start_with? "CTE"
	return "Projectiles" if classname.include?("Projectile")
	return "Items" if weapon_classnames.include?(classname) || classname.start_with?("CWeapon") || classname.include?("Grenade") || classname.include?("CItem")
	return "Base Entities" if classname.start_with?("CBase")
	return "Environment" if classname.include?("CColorCorrection") || classname.include?("CSun") || classname.start_with?("CEnv")
	return "Controllers" if classname.include?("Control") || classname.include?("CTeam")

	return "Other"
end

date = Date.parse(first_line.split(" ").last).strftime("%d.%m.%Y")

netprops_groups = {
	"Important" => [],
	"Items" => [],
	"Projectiles" => [],
	"Environment" => [],
	"Controllers" => [],
	"Temp Entities" => [],
	"Base Entities" => [],
	"Other" => [],
}
classes.each do |classname, props|
	next if classname.nil?
	props_string = []
	props.each do |prop|
		props_string << "* `#{prop["name"]}` (#{prop["type"]})"
	end

	contents = []

	# description
	contents << "---"
	contents << "description: #{classes_type[classname]}"
	contents << "---"
	contents << ""

	contents << "# #{classname}"
	contents << ""
	contents << ""
	contents << props_string.join("\n")

	(props_dir + "#{classname}.md").write(contents.join("\n"))

	group = get_group(classname)
	netprops_groups[group] ||= []
	netprops_groups[group] << classname
end

group_filename = Hash[netprops_groups.map{|a, b| [a, a.parameterize.gsub("-", "")]}]

netprops_groups.each do |group, classnames|
	contents = []

	contents << "# #{group}"
	contents << "---"
	contents << "description: Last updated at #{date}"
	contents << "---"
	contents << ""
	contents << ""

	classnames.each do |classname|
		contents << "{% page-ref page=\"#{classname}.md\" %}"
	end

	contents << ""

	(props_dir + "#{group_filename[group]}.md").write(contents.join("\n"))
end

# Write formatted list of globals and netprops to SUMMARY.md
summary = {
	globals: globals.keys,
	netprops: netprops_groups.map{|group, classnames| {group: group, group_filename: group_filename[group], classnames: classnames}}
}
(output_dir + "SUMMARY.md").write(Mustache.render((SRC_DIR + "gitbook/SUMMARY.md").read, summary))
