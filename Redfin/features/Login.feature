Feature: Login to Redfin as valid user

Scenario: Login to Redfin
Given I am on Redfin homepage
When I click on "Sign In"
And I Click on Continue with Email
And I fill "Email" with "varun.kri@gmail.com" and "Password" with "testing@123"
And I click on Sign In
Then I see usermenu on homepage