require 'capybara/dsl'
require 'selenium-webdriver'


#Scenario: For clickng on filter

##Given(/^I am on Search page$/) do
  ##page.has_css?('body.customer-facing.route-SearchPage')
##end
When(/^I click on the filter button$/) do
  click_button('MoreFilters')
end

Then(/^I see options$/) do
  page.has_content?('FewerFilters')

end
#Scenario: selecting bed filters


Given(/^I see bed filter$/) do
  page.has_css?('Beds')
end

When(/^I select Minimum beds$/) do
	find('span.field.select.Select.clickable.maxBeds').click
  find('1', visible: false)
#find('[name=minBeds]', visible: false).find('option[1]').select_option
end

When(/^I select Maximum bed$/) do
	find('span.field.select.Select.clickable.maxBeds').click
  find('3', visible: false)
end
end


##Scenario: Add bath

When(/^I add baths$/) do
  find('span.field.select.Stepper.Select.clickable.baths').click
  find('1+').click
end

#Add house type
When(/^I select house type$/) do
  click_button('House')
end

When(/^I click on Apply Filters$/) do
  Click_on('Apply Filters')
end

Then(/^I see result\.$/) do
	expect(page).to have_css('svg.SvgIcon.rfSvg.home.property-icon')
	page.execute_script("var list = document.getElementsByClassName('HomeStats'); 
		for(var i=1;i<list.length;i++){
		var details = list[i].getElementsByClassName('value');
			if((details[0].textContent >= 1 && details[0].textContent <=3) &&
					details[1].textContent >=1))
	}")