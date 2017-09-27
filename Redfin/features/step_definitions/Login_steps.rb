require 'capybara/dsl'
require 'selenium-webdriver'



Given(/^I am on Redfin homepage$/) do
  visit 'https://www.redfin.com/'
end

When(/^I click on "([^"]*)"$/) do |text|
  click_link('Sign In', href: nil)
end

When(/^I Click on Continue with Email$/) do
  click_button('Continue with Email')
end

When(/^I fill "([^"]*)" with "([^"]*)" and "([^"]*)" with "([^"]*)"$/) do |element1, emailvalue, element2, pwrd|
  fill_in('Email' , with: 'varun.kri@gmail.com')
  fill_in('Password' , with: 'testing@123')
end

When(/^I click on Sign In$/) do
  click_button('Sign In')
end

Then(/^I see usermenu on homepage$/) do 
  expect(page).to have_selector('#userMenu') 
end
