@optus
Feature: Optus shopping
  @scenario1
  Scenario: Verify user is able to retrieve Mobile Phones after applying filters on Device listing page
    Given I am on the Optus home page
    When I open the Mega Nav
    And I select "Latest Phones" from the Mega Nav
    And I filter devices by "Brands" with the value "Apple"
    And I filter devices by "Internal Memory" with the value "128GB - 256GB"
    And I filter devices by "Network Speed" with the value "5G"
    And I filter devices by "Payment Terms" with the value "24 months"
    And I filter devices by "Sort" with the value "Price Lowest to Highest"
    Then I should see some device results
  @scenario2
  Scenario: Verify user is able to add Data Sim only plan in shopping cart and checkout till order summary page
    Given I am on the Optus home page
    When I open the Mega Nav
    And I select "Data SIMs" from the Mega Nav
    When I select the plan "Small Data SIM Plan"
    And Proceed to checkout as a new customer
  @scenario3
  Scenario: Verify user is able to add Tablet Device with plan in shopping cart and checkout till order summary page
    Given I am on the Optus home page
    When I open the Mega Nav
    And I select "iPads & Tablets" from the Mega Nav
    And I filter devices by "Brands" with the value "Apple"
    And I filter devices by "Colours" with the value "Space Grey"
    And I filter devices by "Internal Memory" with the value "64GB - 128GB"
    And I filter devices by "Operating Systems" with the value "iOS"
    And I filter devices by "Sort" with the value "Newest"
  @scenario4
  Scenario: Verify user is able to add Mobile Device with plan and one addons & accessories in shopping cart and checkout till order summary page
    Given I am on the Optus home page
    When I open the Mega Nav
    And I select "Latest Phones" from the Mega Nav