Given(/^I land on login screen$/) do
  find_element(id: "create_account_button")
end

And(/^I click on Login button$/) do
  find_element(id: "access_existing_account_button").click
end

Then(/^I click Allow on popup$/) do
  find_element(xpath: "//android.widget.Button[@text='Allow']").click
end

Then(/^I enter "([^"]*)" to Company Code field$/) do |value|
  find_element(id: "company_code").clear
  find_element(id: "company_code").send_keys(value)
end

Then(/^I enter "([^"]*)" to Driver ID field$/) do |value|
  find_element(id: "driver_id").send_keys(value)
end

Then(/^I enter "([^"]*)" to Password field$/) do |value|
  find_element(id: "password_password").send_keys(value)
  press_keycode 4
end

And(/^I click on Signin button$/) do
  find_element(id: "sign_in_button").click
end

Then(/^I click on Setup Later$/) do
  find_element(id: "setUpLaterButton").click
end

And(/^I click on Without ELD button$/) do
  find_element(id: "continueWithoutDongleButton").click
end

And(/^I click on Get started button$/) do
  action = Appium::TouchAction.new.swipe(start_x:0.5, start_y: 0.5, offset_x: 0.5, offset_y: 0.1, duration: 500)
  action.perform
  find_element(id: "buttonStarted").click
end

When(/^I click on OK, Got it button$/) do
  find_element(id: "yes_button").click
end

Then(/^I land on dashboard screen$/) do
  find_element(xpath: "//android.widget.TextView[@text='Dashboard']").text
end