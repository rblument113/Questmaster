Feature: Navigation from homepage and back
  
  As a player
  So that I can easily create or view the list of characters and return to the homepage
  I want to be able to click on the links
  
Scenario: As a player I want to navigate from the homepage to the list of characters page and back.
  Given I am on the homepage
  When I click on the "Characters List" link
  Then I should be on the "List of Characters" page
  And I should see the "Back" link
  When I click on the "Back" link
  Then I should be on the homepage

Scenario: As a player I want to navigate from the homepage to the new characters page and back.
  Given I am on the homepage
  When I click on the "New Character" link
  Then I should be on the "New Character" page
  And I should see the "Back" link
  When I click on the "Back" link
  Then I should be on the homepage