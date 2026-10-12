Feature: Promotions
  As an admin
  I want to manage promotions
  So that customers get discounts

  Scenario: Create promotion by admin
    Given I am logged in as admin
    When I create a promotion "15OFF"
    Then the promotion "15OFF" is listed

  Scenario: Create promotion with invalid discount
    Given I am logged in as admin
    When I create a promotion with discount "-5"
    Then I see the error "Invalid discount"

  Scenario: Create duplicated promotion
    Given the promotion "15OFF" exists
    When I create a promotion "15OFF"
    Then I see the error "Promotion already exists"

  Scenario: Promotion expires
    Given a promotion with end date yesterday
    Then it is not applicable

  Scenario: Promotion applies to cart
    Given a cart of 100 reais
    When I apply "15OFF"
    Then the total is 85 reais
