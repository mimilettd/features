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
  within('#orders') do
    table.headers.each do |th|
      assert page.has_xpath?("//th", :text => th, :count => 1)
    end
  end

  assert page.has_css?("#orders tr", :count=>6)
end

Then(/^I should see the sales channel 'Online' reflected$/) do
  within('#sales-channel') do
    page.assert_text 'Online'
    page.assert_no_text 'CX'
    page.assert_no_text 'Retail'
  end
end

Then(/^I should see the sales channel 'CX' reflected$/) do
  within('#sales-channel') do
    page.assert_text 'CX'
    page.assert_no_text 'Online'
    page.assert_no_text 'Retail'
  end
end

Then(/^I should see the sales channel 'Retail' reflected$/) do
  within('#sales-channel') do
    page.assert_text 'Retail'
    page.assert_no_text 'CX'
    page.assert_no_text 'Online'
  end
end

When(/^I filter the list by 'Online' orders$/) do
  click_button 'Sales Channel'
  click_link 'Online'
end

Then(/^I should see Online orders$/) do
  page.assert_text "Jane Doe"
end

Then(/^I should not see CX orders$/) do
  page.assert_no_text "Mimi Le"
end
