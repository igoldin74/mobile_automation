Given(/^I land on the Dashboard screen$/) do
  find_element(xpath: "//android.widget.TextView[@text='Dashboard']").text
end

When(/^I click on the Main Menu button$/) do
  find_element(xpath: "//android.widget.ImageButton").click
end

Then(/^I see main app menu$/) do
  find_element(id: "com.randmcnally.driverconnect:id/text").find_element(xpath: "//android.widget.TextView[@text='Dashboard']")
  find_element(id: "com.randmcnally.driverconnect:id/text").find_element(xpath: "//android.widget.TextView[@text='Inspection Mode']")
  find_element(id: "com.randmcnally.driverconnect:id/text").find_element(xpath: "//android.widget.TextView[@text='Logbook']")
end

When(/^I click on OK, Got it button$/) do
  find_element(id: "com.randmcnally.driverconnect:id/yes_button").click
end

Then(/^I land on dashboard screen$/) do
  find_element(xpath: "//android.widget.TextView[@text='Dashboard']").text
end