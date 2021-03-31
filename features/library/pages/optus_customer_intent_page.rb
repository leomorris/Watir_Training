require_relative 'page_object'

class OptusCustomerChoicePage < PageObject
  def initialize(browser)
    super(browser)
    @page_url = 'https://www.optus.com.au/checkout/customer-choice'
  end

  def proceed_as_new_customer
    @browser.div(class: 'ux-radio-button-group').div(class: /radio-button-group-label/, index: 0).click
    @browser.span(id: 'primary-txt-r-258').click
  end

  def validate_plan_price(plan_name)
    displayed_plan_price = @browser.div(class: 'addon-price', index: 0).text
    case plan_name
    when 'Small Data SIM Plan'
      expected_plan_price = FigNewton.small_data_sim_plan.plan_price
    when 'Medium Data SIM Plan'
      expected_plan_price = FigNewton.medium_data_sim_plan.plan_price
    when 'Large Data SIM Plan'
      expected_plan_price = FigNewton.large_data_sim_plan.plan_price
    else
      # type code here
    end
  end
end
