require 'appium_lib'

def caps
  { caps: {
      deviceName: 'Name',
      platformName: 'Android',
      #app: File.join(File.dirname(__FILE__), 'dc_test.apk'), //if the app needs to be loaded on the device
      appPackage: 'com.randmcnally.driverconnect',
      appActivity: 'com.randmcnally.driverconnect.hos_dvir.MainActivity',
      newCommandTimeout: '3600'
  } }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object