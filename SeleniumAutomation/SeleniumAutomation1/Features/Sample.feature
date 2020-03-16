Feature: Sample
	In order to help with the exercise
	As an automation tester
	I want to show an example of a simple test

@integration
Scenario: Start shopping
	Given I have navigated to the Jupiter Toys website
	When I press on the "Start Shopping" button
	Then I should see some things for sale

@integration
Scenario: Exercise 1 - Check shopping
	Given I have navigated to the Jupiter Toys website
	When I press on the "Start Shopping" button
	Then I should see 8 things for sale

@integration
Scenario: Exercise 2 - Check shopping cart
	Given I have navigated to the Jupiter Toys website
	When I press on the "Start Shopping" button
	And I buy a "Stuffed Frog"
	And I buy a "Valentine Bear"
	Then the cart link should read "Cart(2)"
	And I go to the shopping cart
	And I should see "Stuffed Frog,Valentine Bear" in the shopping cart
	And the total should be $25.98

@integration
Scenario: Exercise 3 - Changing quantity
	Given I have navigated to the Jupiter Toys website
	When I press on the "Start Shopping" button
	And I buy a "Fluffy Bunny"
	And I buy a "Valentine Bear"
	And I go to the shopping cart
	And I should see "Fluffy Bunny,Valentine Bear" in the shopping cart
	And the total should be $24.98
	And I change the quantity of "Fluffy Bunny" to 2
	Then the cart link should read "Cart(3)"
	And the total should be $39.97
	
@integration
Scenario: Exercise 4 - Continued shopping
	Given I have navigated to the Jupiter Toys website
	When I press on the "Start Shopping" button
	And I buy a "Smiley Bear"
	And I buy a "Valentine Bear"Funny Cow
	And I go to the shopping cart
	And I should see "Smiley Bear,Valentine Bear" in the shopping cart
	And the total should be $29.98
	And I go back to shopping
	And I buy a "Funny Cow"
	Then the cart link should read "Cart(3)"
	And the total should be $40.97
	
@integration
Scenario: Excerise 5 - Sort item names
-- Add suitable steps here...
Then the available items in A-Z order are Fluffy Bunny,Funny Cow,Handmade Doll,Smiley Bear,Smiley Face,Stuffed Frog,Teddy Bear,Valentine Bear

@integration
Scenario: Exercise 6 - Sale Day
-- It's our Grand Sale today!! Make sure the correct prices are shown for each item
-- Add suitable steps here...
Then the prices of these items should be 10% less
| Item           | Presale price |
| Smiley Bear    | $16.66        |
| Funny Cow      | $12.21        |
| Teddy Bear     | $14.43        |
| Fluffy Bunny   | $11.10        |
| Handmade Doll  | $12.21        |
| Stuffed Frog   | $12.21        |
| Smiley Face    | $11.10        |
| Valentine Bear | $16.66        |
