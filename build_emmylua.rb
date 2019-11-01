require "bundler/inline"

gemfile do
	source "https://rubygems.org"

	require "json"
	require "pathname"

	gem "pry"
end

BUILD_DIR = Pathname.new("build/")
SRC_DIR = Pathname.new("src/")

globals = JSON.parse((BUILD_DIR + "globals.json").read)

contents = []
contents << "--[[EmmyLua]]"

globals.sort.each do |global, functions|
	contents << ""
	contents << "-- #{global}:"
	contents << ""
	contents << "#{global} = {}"
	contents << ""

	functions.each do |name, documentation|
		contents << "---"

		if documentation.key? "description"
			contents << "--- #{documentation["description"]}"
			contents << "---"
		end
		documentation["args"].each do |arg|
			contents << "--- `#{arg["name"]}`#{arg.key?("description") ? ": #{arg["description"]}" : ""}"
		end
		documentation["args"].each do |arg|
			contents << "---@param #{arg["name"]}#{arg.key?("type") ? " #{arg["type"]}" : ""}"
		end

		contents << "---@return #{documentation["return_type"]}#{documentation.key?("return_description") ? " #{documentation["return_description"]}" : ""}" if documentation.key? "return_type"
		contents << "function #{global}.#{name}(#{documentation["args"].map{|arg| arg["name"]}.join(", ")}) end"
		contents << ""
	end
end

puts contents.join("\n")
