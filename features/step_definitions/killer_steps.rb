@@killed=0
@@remaining=3

Before('@killer') do
  @@killed=@@killed+1
end

After('@killer') do |scenario|
  @@remaining=@@remaining-1
end

When /^this scenario is executed$/ do
  #nothing
end

Then /^[A-z ]* should kill one ninja$/ do
  @@killed.should == 1
end

Then /^[A-z ]* should kill (\d+) ninjas$/ do |expected|
  expected.to_i.should == @@killed
end

Then /^[A-z ]* should expect (\d+) ninjas$/ do |expected|
  expected.to_i.should == @@remaining
end
