Feature: Valid profile edit
  As a loged in user I can edit my profile

  Background: 
    Given I am registrated user
    And I am signed in user
    And I am on the edit profile page

  Scenario: User is edited his username
    And I fill out a "Name" field with "My new name"
    When I try to update data
    Then I should see warning message for "Profile updated"

  Scenario: User is edited his email
    Given I fill out a "Email" field with "test_test@test.com"
    When I try to update data
    Then I should see warning message for "Profile updated"

  @javascript
  Scenario: User is able to delete his account
    When I try to delete my account
    Then account should be deleted