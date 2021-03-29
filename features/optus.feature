@Optus
Feature: Optus shopping
  @Scenario_1
  Scenario: Verify user is able to retrieve Mobile Phones after applying filters on Device listing page
    Given I am on the Optus home page
    When I open the Mega Nav
    And I select "Latest Phones" from the Mega Nav
    And I filter "Brands" with the value "Apple"
    And I filter "Internal Memory" with the value "128GB - 256GB"
    And I filter "Network Speed" with the value "5G"
    And I filter "Payment Terms" with the value "24 months"
    And I filter "Sort" with the value "Price Lowest to Highest"
    Then I should see some device results
  @Scenario_2
  Scenario: Verify user is able to add Data Sim only plan in shopping cart and checkout till order summary page
  @Scenario_3
  Scenario: Verify user is able to add Tablet Device with plan in shopping cart and checkout till order summary page
  @Scenario_4
  Scenario: Verify user is able to add Mobile Device with plan and one addons & accessories in shopping cart and checkout till order summary page