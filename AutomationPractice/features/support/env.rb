require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "faker"
require "ffaker"
require "rspec"

case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "firefox_headless"
  @driver = :selenium_headless
when "chrome"
  @driver = :selenium_chrome
when "chrome_headless"
  @driver = :selenium_chrome_headless
else
  raise "Nagegador inválido"
end

Capybara.configure do |config|
  config.default_driver = @driver
  config.app_host = "http://automationpractice.com/index.php"
  config.default_max_wait_time = 5
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
