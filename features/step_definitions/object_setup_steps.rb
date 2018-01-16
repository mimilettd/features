Before do
  @mimi = Customer.create(first_name: "Mimi", last_name: "Le")
  @jane = Customer.create(first_name: "Jane", last_name: "Doe")
  @john = Customer.create(first_name: "John", last_name: "Doe")
end

Given(/^five recent orders$/) do
  date = 'Mon, 15 Jan 2018 19:00:51 UTC +00:00'

  Order.create(amount: 1400.00, customer: @jane, created_at: date)
  Order.create(amount: 700.00, customer: @mimi, created_at: date)
  Order.create(amount: 1400.00, customer: @jane, created_at: date)
  Order.create(amount: 700.00, customer: @john, created_at: date)
  Order.create(amount: 1400.00, customer: @mimi, created_at: date)
end

Given(/^an order placed Online$/) do
  Order.create(amount: 325.00, customer: @jane, sales_channel: 0)
end

Given(/^an order placed by a customer service representative$/) do
  Order.create(amount: 575.00, customer: @mimi, sales_channel: 1)
end

Given(/^an order placed in a retail location$/) do
  Order.create(amount: 700.00, customer: @john, sales_channel: 2)
end
