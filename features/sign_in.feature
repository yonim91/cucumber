Feature: Sign-in
	As a user
	I want to sign-in
	So I can access the website

Scenario: Sign in
	Given I am on the log in page
	And I provide correct username
	And I provide correct password
	When I click on Sign In button
	Then I should navigate to my home page