$:.unshift(File.dirname(__FILE__) + '/../../src')
require 'skill'

Given /^the following skills are allowed$/ do |table|
  @skill_list=table.raw.flatten.map {|skill| Skill.new(skill)}
end

When /^a ninja faces [a\s]*(.*)$/ do |opponent|
	@opponent=opponent
end

Then /^he should expect the following attack techniques$/ do |table|
	actual_skill_list=[]
	@skill_list.each do |skill|
		if skill.available_to @opponent then
			actual_skill_list << 
			   { "technique" => skill.name, 
			     "danger" => skill.danger(@opponent) }
		end
	end
	table.diff! actual_skill_list
end
