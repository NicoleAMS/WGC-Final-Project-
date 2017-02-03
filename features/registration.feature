Feature: Registration 
  As an unregistered user, I should be able to register 

  Scenario: Happy path  
    Given I am on the "register" page 
    When I fill in "Email" with "sally@hotmail.com"
      And I fill in "Password (at least 6 characters)" with "123456"
      And I fill in "Confirm password" with "123456"
      And I fill in "Access code" with "TRE"
      And I click on "REGISTER"
    Then I should be registered 
      And I should be logged in 
      And I should go to the "" page
      And I should see "LOG OUT"
      And I should not see "LOG IN"
      And I should not see "REGISTER"

  Scenario: Unhappy path - password shorter than 6 characters and not confirmed
    Given I am on the "register" page 
    When I fill in "Email" with "sally@gmail.com"
      And I fill in "Password (at least 6 characters)" with "12345"
      And I fill in "Confirm password" with ""
      And I fill in "Access code" with "TRE"
      And I click on "REGISTER"
    Then I should see "2 errors prohibited this user from being saved:"
  
 