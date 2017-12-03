Feature: The save character button is present on the new character page
  
  As a player
  So that I can easily save my new character
  I want to be able to click the save character button
  
Scenario: As a player I want to be able to navigate from the homepage to the new character page
  Given I am on the homepage
  When I click on the "New Character" link
  Then I should be on the "New Character" page
  And I should see the "Save Character" button
  Then I click on the "Save Character" button