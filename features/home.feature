Feature: A customer visits the homepage
  As an unregistered user, I should be able to visit the homepage 

  @poltergeist
  Scenario: Viewing the header 
    When I go to the home page
    Then I should see a header 