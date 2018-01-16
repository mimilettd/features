Feature: Customer experience representative views sales channel for an order
  As a customer experience representative viewing the details of an order
  I want to see the sales channel for that order
  In order to see where an order originated from

  - For an order placed by a customer the sales channel should be 'Online'
  - For an order placed by a customer experience representative the sales channel should be 'CX'
  - For an order placed in a retail store the sales channel should be 'Retail'

Scenario:
  Given an order placed Online
  When I am on the detail page for that order
  Then I should see the sales channel 'Online' reflected

  Given an order placed by a customer service representative
  When I am on the detail page for that order
  Then I should see the sales channel 'CX' reflected

  Given an order placed in a retail location
  When I am on the detail page for that order
  Then I should see the sales channel 'Retail' reflected
