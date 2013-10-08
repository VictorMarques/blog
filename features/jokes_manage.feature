Feature: Contect me
  In order to create jokes
  As an User
  I want a to jokes list

Scenario: Jokes List
  Given I create user as victor@email.com with 12345678
  Given I have jokes titled sogra
  When  I go to the list of jokes
  Then  I should see "sogra"

  Scenario: Create Joke
    Given I create user as victor@email.com with 12345678
    Given I have no jokes
    And I am on the list of jokes
    When I follow "New Joke"
    And I fill in "Title" with "Praça é Nossa"
    And I fill in "Author" with "desconhecido"
    And I fill in "Joke" with "Cocao"
    And I press "Create"
    Then I should see "Joke was successfully created."
    And I should see "Praça é Nossa"

    Scenario: Edit Joke
      Given I create user as victor@email.com with 12345678
      Given I have jokes titled sogra
      And I am on the list of jokes
      And I follow "Edit"
      And I fill in "Title" with "Praça é Nossa"
      And I fill in "Author" with "desconhecido"
      And I fill in "Joke" with "Cocao"
      And I press "Update"
      Then I should see "Joke was successfully updated."
      And I should see "Praça é Nossa"

    Scenario:Destroy Joke
      Given I create user as victor@email.com with 12345678
      Given I have jokes titled sogra
      And I am on the list of jokes
      And I follow "Destroy"
      Given I have no jokes

     Scenario: Show Joke
      Given I create user as victor@email.com with 12345678
      Given I have jokes titled sogra
      And I am on the list of jokes
      And I follow "Show"
      Then I should see "sogra"



