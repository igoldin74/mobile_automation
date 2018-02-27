Given(/^I land on help popup$/) do
  puts("User land on help popup")
end

When(/^I click on Got it button$/) do
  puts("User clicks on Got it button")
end

Then(/^I land on area screen$/) do
  puts("User lands on Area screen")
end

When(/^I click on Swap button$/) do
  puts("User clicks on Swao button")
end

Then(/^I see "([^"]*)" in From header$/) do |value|
  puts("From header values is #{value}")
end

And(/^I see "([^"]*)" in To header$/) do |value|
  puts("To header values is #{value}")
end

And(/^I click on Clear button$/) do
  puts("User clicks on Clear button")
end

When(/^I enter "([^"]*)" to From field$/) do |value|
  puts("User enters #{value} to From field")
end

Then(/^I get "([^"]*)" in To field$/) do |value|
  puts("Users gets #{value} in To field")
end