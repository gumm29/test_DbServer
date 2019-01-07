require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'
require 'site_prism'
require_relative 'helper.rb'

MASSA = YAML.load_file(File.dirname(__FILE__) + '/data/massa.yml')

World(Helper)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 15
  Capybara.page.driver.browser.manage.window.maximize
end
