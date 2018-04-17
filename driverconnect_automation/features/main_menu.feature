Feature: User is able to open main menu

  Background:
    Given I land on login screen
    And I click on Login button
    And I click Allow on popup
    And I enter "RM-03485" to Company Code field
    And I enter "test10" to Driver ID field
    And I enter "qwerty" to Password field
    And I click on Signin button
    And I click on Setup Later
    And I click on Without ELD button
    And I click on Get started button
    Then I click on OK, Got it button
    And I land on dashboard screen

  @wip
  Scenario:
    Given I land on the Dashboard screen
    When I click on the Main Menu button
    Then I see main app menu

