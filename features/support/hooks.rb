Before do
  browser_type = ENV['BROWSER_TYPE'].to_sym
  @browser = Watir::Browser.new browser_type
  @browser.window.maximize
  @browser.cookies.clear
end

After do
  @browser.close
end

AfterStep do
  filename = DateTime.now.strftime('%F_%H-%M-%S')
  @browser.screenshot.save("D:/Leo/RubymineProjects/Watir_Training/screenshots/#{filename}.png")
end