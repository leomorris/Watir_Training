require_relative 'page_object'

class OptusDataSimsPage < PageObject
  def initialize(browser)
    super(browser)
    @page_url = 'https://www.optus.com.au/broadband-nbn/mobile-broadband/sim-only-data-plans/shop'
  end

  def select_plan(plan_name)
    @browser.button('aria-label': "BUY NOW #{plan_name}").click
  end
end

