Given(/^I am on the new order page$/) do
  visit new_order_path
end

When(/^I am on the dashboard page$/) do
  visit dashboard_index_path
end

When(/^I am on the detail page for that order$/) do
  visit order_path
end
