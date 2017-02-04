Feature: A customer visits the homepage
  As an unregistered user, I should be able to visit the homepage 

  @poltergeist
  Scenario: Viewing the homepage  
    Given I am on the home page 
    Then I should see "THE BUDDHA"
    And I should see "A JOURNEY ROUND THE WORLD OF BUDDHISM"
    And I should see the image "buddha-gold.png"

  @poltergeist
  Scenario: Navigating to another page
    Given I am on the home page 
    When I click on "ABOUT"
    Then I should go to the "about" page 

    Given I am on the home page 
    When I click on "REGISTER"
    Then I should go to the "register" page

    Given I am on the home page 
    When I click on "LOG IN"
    Then I should go to the "login" page 

  # Scenario: Header logged in user  
  #   Given sample data is loaded 
  #     And I am on the "login" page
  #   When I fill in "Email" with "batman@cave.org"
  #     And I fill in "Password" with "123456"
  #     And I click on "Log in"
  #   Then I should be logged in 
  #     And I should go to the "" page
  #     And I should see "LOG OUT"
  #     And I should not see "LOG IN"