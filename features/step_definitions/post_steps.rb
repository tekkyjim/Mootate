Given /^I have no scenarios$/ do
  Scenario.delete_all
end

Then /^I should have ([0-9]+) scenario$/ do |count|
  Scenario.count.should == count.to_i
end