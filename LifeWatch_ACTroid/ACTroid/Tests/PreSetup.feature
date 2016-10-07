Feature: PreSetup
	ACTroid Android Device Setup


@Pre-Setup Sanity
Scenario: Installing ACT Launcher -Brigs and UGWs
	Given I install ACT Launcher version "1.2.5.0"
	When I launch "ACT Launcher"
	Then ACT Launcher should be open
		And ACT Launcher should be version "1.2.5.0"

@Pre-Setup Sanity
Scenario: Act Settings configuration to QA environment on monitor/phone-all devices
	Given I open "ACT SETTINGS" Application on the Homescreen
		And Enter the "ACT Settings" Password
	Then Sensor Number should be "0009"

	When I go to next page in ACT Settings
		And I change Web Service to "QA2 Test" in ACT Settings
	Then I exit ACT Application

@Pre-Setup Sanity
Scenario: Act webservice configuration-all devices
	Given I open "ACT CONFIG" Application on the Homescreen
		And Enter the "Settings" Password
	When I change "WebService" to "http://204.68.184.91" in ACT Config
	Then I save and exit ACT Config