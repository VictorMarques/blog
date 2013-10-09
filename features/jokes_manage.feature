Feature: Contect me
  In order to create jokes
  As an User
  I want a to jokes list

Background: Create User
  Given I create user as victor@email.com with 12345678

Scenario: Jokes List
  Given I have jokes titled sogra
  When  I go to the list of jokes
  Then  I should see "sogra"

  Scenario: Create Joke
    Given I have no jokes
    When I am on the list of jokes
    And I follow "New Joke"
    And I fill in "Title" with "Praça é Nossa"
    And I fill in "Author" with "desconhecido"
    And I fill in "Joke" with "Cocao"
    And I press "Create"
    Then I should see "Joke was successfully created."
    And I should see "Praça é Nossa"

    Scenario: Edit Joke
      Given I have jokes titled sogra, fail
      When I am on the list of jokes
      And I follow "edit_2"
      And I fill in "Title" with "Praça é Nossa"
      And I fill in "Author" with "desconhecido"
      And I fill in "Joke" with "Cocao"
      And I press "Update"
      Then I should see "Joke was successfully updated."
      And I should see "Praça é Nossa"

    Scenario:Destroy Joke
      Given I have jokes titled sogra, velho
      When I am on the list of jokes
      And I follow "delete_1"
      Then I should confirm dialog

    Scenario: Show Joke
      Given I have jokes titled sogra
      When I am on the list of jokes
      And I follow "Show"
      Then I should see "sogra"



