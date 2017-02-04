When(/^I go to the "([^"]*)" page$/) do |page_name|
  visit "/#{page_name}"
end