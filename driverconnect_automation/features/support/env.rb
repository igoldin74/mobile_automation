require 'appium_lib'

def caps
  { caps: {
      deviceName: 'Name',
      platformName: 'Android',
      appPackage: 'com.randmcnally.driverconnect',
      appActivity: 'com.randmcnally.driverconnect.hos_dvir.LandingScreenActivity',
      # unicodeKeyboard: "false", #to hide/unhide keyboard
      # resetKeyboard: "false", #to hide/unhide keyboard
      # app: File.join(File.dirname(__FILE__), 'dc_test.apk'), #if the app needs to be loaded on the device
      # appActivity: 'com.randmcnally.driverconnect.hos_dvir.OnboardingRegistration',
      # appActivity: 'com.randmcnally.driverconnect.hos_dvir.OnboardingLoginActivity',
      # appActivity: 'com.randmcnally.driverconnect.hos_dvir.MainActivity',
      # appActivity: 'com.randmcnally.driverconnect.hos_dvir.FileChooserActivity',
      newCommandTimeout: '3600'
  } }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object