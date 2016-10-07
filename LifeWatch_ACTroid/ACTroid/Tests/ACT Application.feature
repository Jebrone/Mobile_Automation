Feature: ACT Application
	Main ACT Application functions

@Application Sanity
Scenario: ACT application auto restoration 
	Given I open "ACT" Application on the Homescreen
	Then ACT program should be open
	When I press the "Home" button
		And I wait "30" Seconds
	Then ACT program should be open