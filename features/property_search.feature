Feature: Property Search
  As a buyer
  In order to find a property I want to purchase
  I want to be able to search for properties that fit my needs

  Background:
    Given the buyer visits "/realestate"

  Scenario: Filter by price range
    Given the buyer fills in the min list price field with "500000"
    And she fills in the max list price field with "600000"
    When she clicks the "Find properties" button
    Then she should be shown a property with the address, "400 Market St. New Wilmington, Pennsylvania"
