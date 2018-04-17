Given(/^I land on the Dashboard screen$/) do
  find_element(xpath: "//android.widget.TextView[@text='Dashboard']").text
end

When(/^I click on the Main Menu button$/) do
  find_element(xpath: "//android.widget.ImageButton").click
end

Then(/^I see main app menu$/) do
  find_element(xpath: "//android.widget.TextView[@text='Dashboard']").text
  find_element(xpath: "//android.widget.TextView[@text='Inspection Mode']").text
  find_element(xpath: "//android.widget.TextView[@text='Logbook']").text
end