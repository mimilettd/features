Given(/^five recent orders$/) do
  mimi = Customer.create(first_name: "Mimi", last_name: "Le")
  jane = Customer.create(first_name: "Jane", last_name: "Doe")
  john = Customer.create(first_name: "John", last_name: "Doe")

  date = 'Mon, 15 Jan 2018 19:00:51 UTC +00:00'

  Order.create(amount: $1400, customer: jane, created_at: date)
  Order.create(amount: $700, customer: mimi, created_at: date)
  Order.create(amount: $1400, customer: jane, created_at: date)
  Order.create(amount: $700, customer: john, created_at: date)
  Order.create(amount: $1400, customer: mimi, created_at: date)
end
