When(/^I swipe in the menu$/) do
  action = Appium::TouchAction.new.swipe(start_x: 0.1, start_y: 0.9, offset_x: 0.9, offset_y: 0.9, duration: 500)
  action.perform
end

Then(/^I see app menu$/) do
  find_element(id: "design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='Area']")
  find_element(id: "design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='Cooking']")
  find_element(id: "design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='Currency']")
end