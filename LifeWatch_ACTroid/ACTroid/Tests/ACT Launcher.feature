Feature: ACT Launcher
	ACT Launcher for Android Home Screen Display


@Sanity Launcher
Scenario: ACT Launcher - Features 
	When I open "ACT" Application on the Homescreen
	Then ACT program should be open
		And I exit ACT Application

	When I open "ACT SETTINGS" Application on the Homescreen
	Then ACT Password protect screen should open

	When I open "ACT CONFIG" Application on the Homescreen
	Then Password protect screen should open

	When I open "ACT TOOLS" Application on the Homescreen
	Then ACT Password protect screen should open
		And I exit ACT Application

	When I open "Internet" Application on the Homescreen
	Then Password protect screen should open

	When I open "Settings" Application on the Homescreen
	Then Password protect screen should open

	When I open "File Manager" Application on the Homescreen
	Then Password protect screen should open

	When I tap Technician Mode
	Then Password protect screen should open

	When I press the "Camera" button
	Then ACT Launcher should be open

	When I launch "Dialer"
	Then ACT Launcher should be open

	When I press the "Menu" button
	Then ACT Launcher should be open
	
@Sanity Launcher
Scenario: Technician Mode - Features
	Given I change Technician Mode to "On"
	Then Technician Mode should be "On"

#	Test Case is not updated!
#	When I open "ACT SETTINGS" Application on the Homescreen
#		Then ACT Password protect screen should not open

	When I open "ACT CONFIG" Application on the Homescreen
	Then ACT Config should be open
		And I save and exit ACT Config

	When I open "Internet" Application on the Homescreen
	Then Internet should be open

	When I open "Settings" Application on the Homescreen
	Then Settings should be open

	When I open "File Manager" Application on the Homescreen
	Then File Manager should be open

	When I open Task Manager
	Then Task Manager should be open
		
	Given I change Technician Mode to "Off"
	When I open Task Manager
	Then ACT Launcher should be open
	
	Given I reboot the device
	When I force close ACT Application
	Then ACT Launcher should be open

	Given I open "ACT" Application on the Homescreen
		And I reboot the device
	When I force close ACT Application
	Then ACT Launcher should be open

@Sanity Launcher
Scenario: User can navigate to settings and make modification when ACT application is running
	When I open "Settings" Application on the Homescreen
	Then Password protect screen should open

	When I drag down Notification menu
	Then ACT Launcher should be open

	Given I drag down Notification menu
	When I try to click settings
	Then ACT Launcher should be open

@Sanity Launcher Technician_Mode
Scenario: Technician mode -Auto "on"
	Given I open "ACT CONFIG" Application on the Homescreen
		And Enter the "Settings" Password
	Then I save and exit ACT Config
	Then Technician Mode should be "On"

@Sanity Launcher Technician_Mode
Scenario: Technician Mode Should timeout after 3 mins.
	Given I change Technician Mode to "On"
	When I wait "180" Seconds
	Then Technician Mode should be "Off"