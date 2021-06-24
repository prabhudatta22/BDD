Feature: Account Page Feature

Background:
Given user has already logged in to application
|username|password|
|Main86|Darwin@123|

@accounts
Scenario: Accounts page title
Given user clicks on the profile
When selects switch to admin option
And refresh the page
And clicks on the Reports tab
And selects "Attendance Roster" from the module dropdown
When selects "Absentee Summary" from the roaster dropdown
Then report filter should be displayed