Feature: Navigate from the list of characters page to the homepage
  
  As a player
  So that I can easily return to the previous page
  I want to navigate to the homepage
  
Scenario: As a player I want to be able to navigate from the list of characters page to the homepage
  Given I am on the homepage
  When I click on the "Characters List" link
  Then I should be on the "List of Characters" page
  When I click on the "Back to Home" link
  Then I should be on the homepage
