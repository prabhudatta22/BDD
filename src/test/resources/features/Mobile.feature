Feature: Mobile Automation Demo

 @LinkedInForm
  Scenario: TC001: Verify User is able to submit form in Linked In Home page
    Given User Navigate to LinkedIn Home Page
    When User enter "Linkedin" as FirstName in LinkedIn form
    And User enter "MBA" as LastName in LinkedIn form
    And User enter "linkedformmba@cunet.com" as Email in LinkedIn form
    And User enter "6434567890" as PhoneNumber in LinkedIn form
    And User enter "55111" as Zip in LinkedIn form
    When User click "Submit" button in LinkedIn form
    Then User should see the "200" Response Status code
    Then User should see the "Strayer University :: Thank You" text on page
    
   @ShortForm 
  Scenario: TC002: Verify User is able to submit Short form
    Given User move to Short form Page
    When User Clicks on "Request Info" Link in Footer Ribbon
    And User enter "Short" as FirstName in Short form
    And User enter "Form" as LastName in Short form
    And User enter "shortform@cunet.com" as Email in Short form
    And User enter "6434567890" as PhoneNumber in Short form
    And User enter "55111" as Zip in Short form
    And User click "AgreeandGo" button in Short form
    Then User should see the "200" Response Status code
    Then User should see the "Strayer University :: Thank You" text on page
    
    ######################################################################################
    #### Prabhudtta Developed #########################
    
  @SmokeTest @Regression @Forms @SUEDU
  Scenario: TC003: Verify User is able to submit Banner form
    Given User Navigate to EDU Banner Forms Page
    When User Clicks on "Request Info" Link in Footer Ribbon in Banner form
    And User enter "Banner" as FirstName in Ribbon Banner form
    And User enter "Form" as LastName in Ribbon Banner form
    And User enter "Bannerform@cunet.com" as Email in Ribbon Banner form
    And User enter "3232377767" as PhoneNumber in Ribbon Banner form
    And User enter "55111" as Zip in Ribbon Banner form
    When User click "AgreeandGo" button in Ribbon Banner form
    Then User should see the "200" Success Response Status code
    Then User should navigate to "Thank You" Thank you page
    
     @SmokeTest @Regression @Forms @SUEDU
  Scenario: TC004: Verify Error validations in Footer form
    Given User Navigate to EDU Forms Page
     When User Clicks on "Request Info" Link in Footer Ribbon in Banner form
    When User click "AgreeandGo" button in Ribbon Banner form
    Then User should see the "*Please enter all required Fields" for FirstName field
    When User move to footerRFI
    And User enter "Footer" as FirstName in Ribbon Banner form
    When User click "AgreeandGo" button in Ribbon Banner form
    Then User should see the "*Please enter all required Fields" for LastName field
    When User move to footerRFI
    And User enter "Form" as LastName in Ribbon Banner form
    When User click "AgreeandGo" button in Ribbon Banner form
    When User move to footerRFI
    Then User should see the "*Please enter all required Fields" for Email field
    And User enter "footerform@cunet.com" as Email in Ribbon Banner form
    When User click "AgreeandGo" button in Ribbon Banner form
    Then User should see the "*Please enter all required Fields" for PhoneNumber field
    When User move to footerRFI
    And User enter "3232344567" as PhoneNumber in Ribbon Banner form
    When User click "AgreeandGo" button in Ribbon Banner form
    Then User should see the "*Please enter all required Fields" for ZipCode field
    
    ##################### Not working after clicking Learn more link #########################
    @SmokeTest @Regression @Forms @OMS
  Scenario: TC005: Verify user is able to submit Degree header form
    Given User Navigate to Degree Page
    When User click on Hambergur menu
    When User Click on LEARN MORE link in Degree Page Header
    #When User move to Degree Form
    And User enter "Degree" as FirstName in Degree form
    And User enter "Form" as LastName in Degree form
    And User enter "TA DIGITAL" as Company in Degree form
    And User enter "Mr Pradeep" as Title in Degree form
    And User enter "degreeform@cunet.com" as Email in Degree form
    And User enter "BEST COMPANY" as Comments in Degree form
    When User click "Submit" button in Degree form
    Then User should see the "200" Response Status code
    Then User should see the "Thank you for your interest in Degrees@Work." text on Window
     ###################### #########################
    
    