When(/^I select "([^"]*)" from "([^"]*)"$/) do |txt, input|
  select txt, from: input
end

When(/^I choose "([^"]*)"$/) do |name|
  choose name
end

When(/^I click "([^"]*)"$/) do |txt|
  click_link txt
end

When(/^I press "([^"]*)"$/) do |name|
  click_button name
end

Then(/^I should see "([^"]*)"$/) do |txt|
  page.assert_text txt
end

Then(/^I should see "([^"]*)" in my shopping cart$/) do |txt|
  within('#cart') do
    page.assert_text txt
  end
end

Then(/^I should see a list in the following format:$/) do |table|
  data = table.raw
  data.each do |row|
    row.each do |cell|
      within('#orders') do
        page.assert_text cell
      end
    end
  end
end
