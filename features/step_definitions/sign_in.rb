require 'watir'

url = "http://34.233.251.200:8080/scrtracking/"
browser = Watir::Browser.new

Given /^I am on the log in page$/ do
	browser.goto url
end

And /^I provide correct username$/ do
	browser.text_field(:id, "email").set("user")
end

And /^I provide correct password$/ do
	browser.text_field(:id, "pwd").set("user")
end

When /^I click on Sign In button$/ do
	browser.button(:text => /Sign In/).click
end

Then /^I should navigate to my home page$/ do
	browser.wait
	browser.wait
	if browser.b(:text => /Create Request/).exist?
		puts
		puts "yaaay"
		puts
		browser.button(:title => /Log Off/).click
		browser.close
	else
		puts "h3s:"
		puts browser.h3s
		puts browser.url
		raise "Log In Unsuccessful"
	end
end

