Feature: Promotions
  As an admin
  I want to manage promotions
  So that customers get discounts

  Scenario: Create promotion by admin
    Given I am logged in as admin
    When I create a promotion "15OFF"
    Then the promotion "15OFF" is listed
