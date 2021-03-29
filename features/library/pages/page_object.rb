class PageObject
  def initialize(browser)
    @browser = browser
    @page_url = ""
  end

  def go_to_page
    @browser.goto(@page_url)
  end

  def wait_until_new_page_loads
    @browser.wait_while {@browser.url == @page_url}
  end

end