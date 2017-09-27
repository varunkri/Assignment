require "rubygems"
require "Capybara"
require "Capybara/cucumber"
require "capybara/dsl"
require "rspec"
require 'selenium/webdriver'

Capybara.run_server = false
#Set default driver as Selenium
Capybara.default_driver = :selenium
#Set default selector as css
Capybara.default_selector = :css

Capybara.register_driver:selenium do |app|
	Capybara::Selenium::Driver.new app, browser: :firefox

end 
Capybara.default_max_wait_time = 10
module Helpers
  def without_resynchronize
    page.driver.options[:resynchronize] = false
    yield
    page.driver.options[:resynchronize] = true
  end
end
World(Capybara::DSL, Helpers)