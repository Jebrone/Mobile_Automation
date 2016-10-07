Feature: ACT Config
	Change ACT Config Settings

@Sanity Config Launcher
Scenario: Technician mode -Auto "on"
	Given I open "ACT CONFIG" Application on the Homescreen
		And Enter the "Settings" Password
	Then I save and exit ACT Config
	Then Technician Mode should be "On"
