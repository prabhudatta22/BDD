Feature: Test QA

  @SmokeTest @Regression @Forms @OMS
  Scenario: TC005: Verify user is able to submit Degree header form
    Given User Navigate to Degree Page
    When User click on Hambergur menu
    When User Click on LEARN MORE link in Degree Page Header
    And User enter "Degree" as FirstName in Degree form
    And User enter "Form" as LastName in Degree form
    And User enter "TA DIGITAL" as Company in Degree form
    And User enter "Mr Pradeep" as Title in Degree form
    And User enter "degreeform@cunet.com" as Email in Degree form
    And User enter "BEST COMPANY" as Comments in Degree form
    When User click "Submit" button in Degree form
    Then User should see the "200" Response Status code
    