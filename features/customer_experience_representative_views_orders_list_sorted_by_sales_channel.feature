@javascript
Feature: Customer experience representative views orders list sorted by sales channel
  As a customer experience representative viewing the orders list
  I want to filter the order list by sales channel
  In order to see orders by different sales channels

Scenario:
  Given an order placed Online
  And an order placed by a customer service representative 
  And I am viewing the orders lists
  When I filter the list by 'Online' orders
  Then I should see Online orders
  And I should not see CX orders
