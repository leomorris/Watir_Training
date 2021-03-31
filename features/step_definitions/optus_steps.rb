Given('I am on the Optus home page') do
  $user = OptusHomePage.new(@browser)
  $user.go_to_page
  log("The Optus home page is successfully opened")
end

When('I open the Mega Nav') do
  $user.show_mega_nav_button.click
  expect($user.mega_nav.present?).to be true
  log("The Mega Nav is displayed")
end

And('I select {string} from the Mega Nav') do |category|
  href = $user.mega_nav_button(category).href
  $user.mega_nav_button(category).click
  $user.wait_until_new_page_loads
  expect(@browser.url).to be == href
  log("The #{category} is successfully loaded")
end

And('I filter devices by {string} with the value {string}') do |filter_category, filter_value|
  $user = OptusMobilePhonesPage.new(@browser)
  $user.filter_devices(filter_category, filter_value)
end

Then('I should see some device results') do
  expect($user.result_tile.present?).to be true
  log("At least one device tile is displayed")
end

When('I select the plan {string}') do |plan_name|
  $user = OptusDataSimsPage.new(@browser)
  $user.select_plan(plan_name)
  @selected_plan = plan_name
end

And('Proceed to checkout as a new customer') do
  $user = OptusCustomerChoicePage.new(@browser)
  $user.proceed_as_new_customer
  $user.validate_plan_price(@selected_plan)
end