Feature: Test QA

   @ScheduleConsultationForm @CUEDU @Forms
  Scenario: TC_026: Verify user is able to subit Schedule Consultation form
    Given User is on Capella Home Page
    And User click Schedule Consultation link under the menu
    Then User move to Consultation form
    And User select "Certificate" as Degree in Consultation form
    And User select "Business" as Area of Study in Consultation form
    And User select "Undergrad Cert - Accounting" as Specialization Study in Consultation form
    And User select "As soon as possible" as Start Date in Consultation form
    And User enter "Schedule Consultation" as First Name in Consultation form
    And User enter "Form" as Last Name in Consultation form
    And User enter email in Email Address in Consultation form
    And User enter PhoneNumber as Phone Number in Consultation form
    And User enter "55111" as ZipCode in Consultation form
    And User submit the Consultation form
    Then User should see the "200" Success Response Status code
    And User should get Thank you window for Consultation form