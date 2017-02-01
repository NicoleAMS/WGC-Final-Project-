Feature: A customer visits the homepage
  As an unregistered user, I should be able to visit the homepage 

  @poltergeist
  Scenario: Viewing the homepage  
    Given I am on the home page 
    Then I should see "THE BUDDHA"
    And I should see "A JOURNEY ROUND THE WORLD OF BUDDHISM"
    And I should see the image "buddha-gold.png"

  # @poltergeist
  # Scenario: Viewing the main section  
  #   When I go to the home page
  #   Then I should see A JOURNEY ROUND THE WORLD OF BUDDHISM 

  @poltergeist
  Scenario: Navigating to another page
    Given I am on the home page 
    When I click on "ABOUT"
    Then I should go to the "about" page 
    When I click on "REGISTER"
    Then I should go to the "register" page
