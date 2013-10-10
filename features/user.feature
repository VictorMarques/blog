Feature: Login
  In order to create user
  As an User
  I want a to login user and create user

  Scenario: Sign up
    Given I create user as victor@email.com with 12345678

  Scenario: Sign in
    Given I sign user as victor@email.com with 12345678

  Scenario: Sign out
    Given I create user as victor@email.com with 12345678
    Given I sign out 

  Scenario:User List
    Given I create user as victor@email.com with 12345678
    When I go to the list of users
    Then I should see "users"

  Scenario: User Edit
    Given I create user as victor@email.com with 12345678
    When I go to the list of users
    And I follow "Edit"
    And I fill in "Email" with "user@email.com"
    And I fill in "Password" with "12345678"
    And I fill in "Password confirmation" with "12345678"
    And I fill in "Current password" with "12345678"
    And I press "Update"
    And I go to the list of jokes

@javascript
    Scenario: User Destroy
      Given I create user as victor@email.com with 12345678
      When I am on the list of users
      And I should see "victor@email.com "
      And I should see "Destroy"
      And I follow "delete_1" and accept alert


