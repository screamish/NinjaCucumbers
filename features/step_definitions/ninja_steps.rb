$:.unshift(File.dirname(__FILE__) + '/../../src')
require 'ninja'

  Given /^the ninja has a ([a-z]*) level black\-belt$/ do |belt_level|
    @ninja=Ninja.new belt_level
  end
  
  When /^attacked by [a\s]*(.*)$/ do |opponent|
    @actions=@ninja.attacked_by(opponent)
  end
  
  Then /the ninja should (.*)$/ do |expected_action|
    @actions.should include expected_action
  end
  
  Given /^a ninja with the following experience$/ do |table|
    @ninja=Ninja.new table.hashes.first["belt_level"]
  end
