Feature: Rails admin
  Only as an admin, I should be able to visit the admin page 

  Scenario: An admin visits the admin page 
    Given sample data is loaded
      And I am on the "login" page
    When I fill in "Email" with "nicole@gmail.com"
      And I fill in "Password" with "123456"
      And I click on "Log in"
      And I go to the "" page
      And I go to the "admin" page
    Then I should see "Site Administration"
      And I should see "Users"

    When I go to the "admin/user" page
    Then I should see "List of Users"


  Scenario: A curator visits the admin page
    Given sample data is loaded
      And I am on the "login" page
    When I fill in "Email" with "harry@gmail.com"
      And I fill in "Password" with "123456"
      And I click on "Log in"
      And I go to the "" page
      And I go to the "admin" page
    Then I should see "Site Administration"

  Scenario: A user tries to visit the admin page
    Given sample data is loaded
      And I am on the "login" page
    When I fill in "Email" with "batman@cave.org"
      And I fill in "Password" with "123456"
      And I click on "Log in"
      And I go to the "" page
      And I go to the "admin" page
  Then I should see "You are not authorized to access this page!"