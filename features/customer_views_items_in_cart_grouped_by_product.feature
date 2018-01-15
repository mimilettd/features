@javascript
Feature: Customer views items in cart grouped by product 
  As a customer adding multiple items to my shopping cart
  I want to see the products I've added, that are the same, grouped together
  In order to provide a clear shopping experience

Scenario:
  Given the following products:
   | name           | cost   |
   | Twin Mattress  | 325.00 |
   | Queen Mattress | 575.00 |
   | King Mattress  | 700.00 |
  And I am on the new order page

  When I choose "King Mattress $700.00"
  And I click "Add To Cart"
  Then I should see "King Mattress $700.00" in my shopping cart

  When I choose "King Mattress $700.00"
  And I click "Add To Cart"
  Then I should see "(2) King Mattress $1400.00" in my shopping cart
