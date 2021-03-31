class PageObject
  def initialize(browser)
    @browser = browser
    @page_url = ""
  end

  def go_to_page
    @browser.goto(@page_url)
  end

  def wait_until_new_page_loads
    # Wait for Optus logo to be visible while page loads
    @browser.img(alt: 'Optus Logo').wait_until(&:present?)
  end

end