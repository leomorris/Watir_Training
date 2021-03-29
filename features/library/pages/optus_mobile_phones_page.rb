require_relative 'page_object'

class OptusMobilePhonesPage < PageObject
  def initialize(browser)
    super(browser)
    @page_url = 'https://www.optus.com.au/mobile/phones'
  end

  def filter(filter_category, filter_value)
    @browser.label('aria-label': "Filter By: #{filter_category}.").click
    @browser.div('data-label': filter_value).click
  end

  def result_tile
    @browser.div(class: /MobileDevicestyle__MobileDeviceWrapper/)
  end
end
