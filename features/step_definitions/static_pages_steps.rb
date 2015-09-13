Given(/^I am on the application's home page$/) do
  visit root_path
end

Then(/^I can see home page content$/) do
  page.find("h1", text: "Welcome to TDD demo-app")
end

When(/^I visit application's help page$/) do
  visit help_path
end

Then(/^I can see help page content$/) do
  page.find("h1", text: "Help")
end

When(/^I visit application's About page$/) do
  visit about_path
end

Then(/^I can see About page content$/) do
  page.find("h1", text: "About Me")
end

When(/^I visit application's contact page$/) do
  visit contact_path
end

Then(/^I can see contact page content$/) do
  page.find("h1", text: "Contact Me")
end