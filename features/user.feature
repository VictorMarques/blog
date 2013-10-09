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



