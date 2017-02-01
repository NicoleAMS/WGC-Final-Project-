Given(/^I am on the home page$/) do
  visit '/'
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content(content)
end

Then(/^I should see the image "([^"]*)"$/) do |image|
  page.should have_xpath("//img[contains(@src, \"#{image}\")]")
end

When(/^I click on "([^"]*)"$/) do |about|
  click_on about
end 

Then(/^I should go to the "([^"]*)" page$/) do |page_name|
  visit "/#{page_name}"
end