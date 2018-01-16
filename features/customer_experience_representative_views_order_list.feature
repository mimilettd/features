Feature: Customer experience representative views order list
  As a customer experience representative on my dashboard
  I want to see a list of all the recent orders
  In order to view all of the recent orders

Scenario:
  Given 5 orders
  When I am on the dashboard page
  And I click "Orders"
  Then I should see a list in the following format:
  | Order Number | Customer | Date Created |
  | 1            | Jane Doe | 01/01/2017   |
