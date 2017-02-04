Feature: Registration - Login - Logout
  As an unregistered user, I should be able to register with valid details 
  As a registered user, I should be able to login with valid details and logout 

  Scenario: Registration happy path 
    Given I am on the "register" page 
      And sample data is loaded 
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

  Scenario: Registration unhappy path - password shorter than 6 characters and not confirmed and access code not unique 
    Given I am on the "register" page 
      And sample data is loaded 
    When I fill in "Email" with "sally@gmail.com"
      And I fill in "Password (at least 6 characters)" with "12345"
      And I fill in "Confirm password" with ""
      And I fill in "Access code" with "ABC"
      And I click on "REGISTER"
    Then I should see "Password Password is too short"
    And I should see "Password confirmation doesn't match"
    And I should see "Code has already been taken"

  Scenario: Registration unhappy path - access code invalid format 
    Given I am on the "register" page 
    When I fill in "Email" with "sally@gmail.com"
      And I fill in "Password (at least 6 characters)" with "123456"
      And I fill in "Confirm password" with "123456"
      And I fill in "Access code" with "A"
      And I click on "REGISTER"
    Then I should see "Code is not valid"

  Scenario: Login happy path
    Given sample data is loaded 
      And I am on the "login" page
    When I fill in "Email" with "nicole@gmail.com"
      And I fill in "Password" with "123456"
      And I click on "Log in"
    Then I should see "Signed in successfully."
      And I should see "LOG OUT"
      And I should not see "LOG IN"
      And I should not see "REGISTER"

  Scenario: Login unhappy path 
    Given sample data is loaded
      And I am on the "login" page
    When I fill in "Email" with "n@gmail.com"
      And I fill in "Password" with "123456"
      And I click on "Log in"
    Then I should see "Invalid Email or password."

  Scenario: Logout
    Given sample data is loaded
      And I am on the "login" page
    When I fill in "Email" with "nicole@gmail.com"
      And I fill in "Password" with "123456"
      And I click on "Log in"
      And I click on "LOG OUT"
    Then I should see "Signed out successfully."
 