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

class Template < Mustache
	self.template_extension = "md"

	def initialize(name, template_path: nil)
		self.template_path = template_path.to_s unless template_path.nil?
		self.template_name = name
	end
end

class DocumentationFormat
	def initialize(directory_name: "gitbook", build_dir: nil, src_dir: nil, docs_dir: nil)
		@input_dir = src_dir + directory_name
		@output_dir = build_dir + directory_name
		@docs_dir = docs_dir || @output_dir
		@globals_dir = @docs_dir + "globals"
		@props_dir = @docs_dir + "netprops"
		@template_dir = (@input_dir + ".templates").to_s

		FileUtils.rm_r(Dir[@output_dir + "*"]) if @output_dir.directory?

		@output_dir.mkpath
		@props_dir.mkpath

		FileUtils.cp_r(@input_dir, build_dir)
		FileUtils.rm_r(@output_dir + ".templates") if (@output_dir + ".templates").directory?

		@globals_template = Template.new("globals", template_path: @template_dir)
		@netprops_class_template = Template.new("netprops_class", template_path: @template_dir)
		@netprops_group_template = Template.new("netprops_group", template_path: @template_dir)
	end

	def build_global(name, data)
		(@globals_dir + "#{name}.md").write(@globals_template.render(data).chomp, mode: "w+")
	end

	def build_netprops_class(classname, data)
		(@props_dir + "#{classname}.md").write(@netprops_class_template.render(data), mode: "w+")
	end

	def build_netprops_group(filename, data)
		(@props_dir + "#{filename}.md").write(@netprops_group_template.render(data), mode: "w+")
	end

	def build_events(data)
		(@docs_dir + "development" + "events.md").write(Template.new("events", template_path: @template_dir).render(data), mode: "w+")
	end

	def build_summary(data)
		(@docs_dir + "SUMMARY.md").write(Template.new("summary", template_path: @template_dir).render(data), mode: "w+")
	end
end

SHORT_ARG_TYPES = true
BUILD_DIR = Pathname.new("build/")
SRC_DIR = Pathname.new("src/")

documentation_formats = []
documentation_formats << DocumentationFormat.new(directory_name: "gitbook", build_dir: BUILD_DIR, src_dir: SRC_DIR)
documentation_formats << DocumentationFormat.new(directory_name: "mkdocs", build_dir: BUILD_DIR, src_dir: SRC_DIR, docs_dir: BUILD_DIR + "mkdocs/docs")

globals = JSON.parse((BUILD_DIR + "globals.json").read)
extra_docs = JSON.parse((SRC_DIR + "extra_docs.json").read)
events = JSON.parse((SRC_DIR + "events.json").read)
globals_descriptions = extra_docs["globals_descriptions"]
globals_examples = extra_docs["globals_examples"]

globals.sort.to_h.map do |global, functions|
	functions_list = functions.sort_by{|name, data| data.key?("name") && data["name"].include?(":") ? "\xFF#{name}" : name}.map do |name, function|
		# name
		function["name"] ||= "#{global}.#{name}"
		function["display_name"] = function["name"].include?(":") ? (":" + function["name"].split(":").last) : function["name"]

		# args text
		arg_names = ""
		if function.key? "args"
			function["args"].each_with_index do |arg, i|
				arg_text = arg["name"]
				arg_text += ": #{SHORT_ARG_TYPES ? arg["type"].split[0] : arg["type"]}" if arg.key? "type"
				arg_text = i == 0 ? "#{arg_text}" : ", #{arg_text}"
				arg_names << (arg["optional"] ? "[#{arg_text}]#{i == function["args"].length-1 ? "" : " "}" : arg_text)
			end
		end
		function["args_text"] = arg_names

		# args
		function["args"] = {list: function["args"]} unless function["args"].empty?

		function
	end

	data = {
		description: globals_descriptions[global],
		functions: functions_list,
		global: global,
		examples: globals_examples.key?(global) ? {list: globals_examples[global]} : nil
	}

	documentation_formats.each do |documentation_format|
		documentation_format.build_global(global, data)
	end
end

# Generate netprops
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
		current_class = line.split[0]
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

	if table_finished && !current_table.nil? && !current_table_nums.empty?
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

	"Other"
end

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

	data = {
		type: classes_type[classname],
		classname: classname,
		props: props
	}

	documentation_formats.each do |documentation_format|
		documentation_format.build_netprops_class(classname, data)
	end

	group = get_group(classname)
	netprops_groups[group] ||= []
	netprops_groups[group] << classname
end

group_filename = Hash[netprops_groups.map{|a, b| [a, a.parameterize.gsub("-", "")]}]

date = Date.parse(first_line.split.last).strftime("%d.%m.%Y")
netprops_groups.each do |group, classnames|
	data = {
		group: group,
		last_updated: date,
		classnames: classnames
	}

	documentation_formats.each do |documentation_format|
		documentation_format.build_netprops_group(group_filename[group], data)
	end
end

# Write event list
events_data = {
	events: events["events"].map do |name, data|
		data["name"] = name

		if data.dig("properties", 0).is_a? String
			data["string_properties"] = data["properties"].map.with_index {|prop, i| {index: i+1, prop: prop}}
			data["has_string_properties"] = true
		elsif data.key? "properties"
			data["table_properties"] = data["properties"].map{|table| table.map{|key, description| {key: key, description: description}}}
			data["has_table_properties"] = true
		end

		data["has_examples"] = !data.dig("examples", 0).nil?

		data
	end
}
documentation_formats.each do |documentation_format|
	documentation_format.build_events(events_data)
end

# Write formatted list of globals and netprops to SUMMARY.md
summary_data = {
	globals: globals.keys,
	netprops: netprops_groups.map{|group, classnames| {group: group, group_filename: group_filename[group], classnames: classnames}}
}

documentation_formats.each do |documentation_format|
	documentation_format.build_summary(summary_data)
end
