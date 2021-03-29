require_relative 'page_object'

class OptusHomePage < PageObject
  def initialize(browser)
    super(browser)
    @page_url = 'https://www.optus.com.au'
  end

  def show_mega_nav_button
    @browser.button(id: 'btnShowMegaNav')
  end

  def mega_nav
    @browser.div('aria-labelledby': 'btnShowMegaNav')
  end

  def mega_nav_button(category)
    mega_nav.a(text: category)
  end

end
