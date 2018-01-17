Given(/^I am on the new order page$/) do
  visit new_order_path
end

When(/^I am on the dashboard page$/) do
  visit dashboard_index_path
end

When(/^I am on the detail page for that order$/) do
  visit order_path(@order)
end

Given(/^I am viewing the orders lists$/) do
  visit dashboard_index_path
  click_link 'Orders'
end
