require 'capybara/dsl'
require 'selenium-webdriver'


#Scenario: Search with city

Given(/^I am on redfin homepage$/) do
  visit 'https://www.redfin.com/'
end

When(/^I enter city name as "([^"]*)" in search$/) do |searchtext|
  ##input = page.all('search-input-box')
  
  fill_in( 'City, Address, School, Agent, ZIP' , with: searchtext)
end

When(/^I Click on search$/) do
    ##page.first("Search").click
    click_on('Search', match: :first)
end

Then(/^I see the search page$/) do
  expect(page).to have_selector ('body.customer-facing.route-SearchPage')
end

