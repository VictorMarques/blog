Feature: Contect me
  In order to create jokes
  As an User
  I want a to jokes list

Scenario: Jokes List
  Given I have jokes titled sogra
  When  I go to the list of jokes
  Then  I should see "sogra"

  Scenario: Create Joke
    Given I have no jokes
    And I am on the list of jokes
    When I follow "New Joke"
    And I fill in "Title" with "Praça é Nossa"
    And I fill in "Author" with "desconhecido"
    And I fill in "Joke" with "Cocao"
    And I press "Create"
    Then I should see "Joke was successfully created."
    And I should see "Praça é Nossa"
