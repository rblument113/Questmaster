Feature:Add a new character entry
  
  As a player
  So that I can easily create a playable character
  I want to be able to add a new character
  
Scenario: As a player I want to be able to navigate from the homepage to the new character page 
  Given I am on the homepage
  When I click on the "New Character" link
  Then I should be on the "New Character" page
  And I should see the "Charname" field
  And I should see the "Level" field
  #And I should see the "Class" field
  And I should see the "Strength" field
  And I should see the "Dexterity" field
  And I should see the "Constitution" field
  And I should see the "Intelligence" field
  And I should see the "Wisdom" field
  And I should see the "Charisma" field
  #And I should see the "Race" field