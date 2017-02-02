Given(/^sample data is loaded$/) do
  require './db/seeds'
  extend SeedData
end

Given(/^I am logged in as "([^"]*)"$/) do |email|
  user = User.find_by(email: email)
  log_on_as(user)
end

Given(/^I am on the home page$/) do
  visit '/'
end

Given(/^I am on the "([^"]*)" page$/) do |page_name|
  visit "/#{page_name}"
end

When(/^I click on "([^"]*)"$/) do |about|
  click_on about
end 

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |selector, text|
 fill_in selector, with: text
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content(content)
end

Then(/^I should see the image "([^"]*)"$/) do |image|
  page.should have_xpath("//img[contains(@src, \"#{image}\")]")
end

Then(/^I should be logged in$/) do
  visit user_session_path
end

Then(/^I should go to the "([^"]*)" page$/) do |page_name|
  visit "/#{page_name}"
end

Then(/^I should not see "([^"]*)"$/) do |text|
  expect(page.body).to_not match(text)
end
