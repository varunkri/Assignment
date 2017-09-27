Feature: Search with city

Scenario: Search with City name
Given I am on redfin homepage
When I enter city name as "Long Beach,CA" in search
And I Click on search
And I click on the filter button
And I select Minimum beds
And I select Maximum bed
And I add baths
And I select house type
Then I see result