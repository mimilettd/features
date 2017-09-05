When(/^I select "([^"]*)" from "([^"]*)"$/) do |txt, input|
  select txt, from: input
end

When(/^I press "([^"]*)"$/) do |name|
  click_button name
end

Then(/^I should see "([^"]*)"$/) do |txt|
  page.assert_text txt
end
