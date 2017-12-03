Feature: The navigation between the homepage and list of characters page exists
  
  As a player
  So that I can easily view the list of characters
  I want to navigate to the list of characters page
  
Scenario: As a player I want to be able to navigate from the homepage to the list of characters
  Given I am on the homepage
  When I click on the "Characters List" link
  Then I should be on the "List of Characters" page
