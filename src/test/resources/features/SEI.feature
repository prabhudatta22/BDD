#Author: Pradeep Kumar Aavula
#Keywords Summary : This feature contains SEI Application functionalities
Feature: SEI Automation Suite

  @PEPRFI @Forms @SUEDU
  Scenario: TC020: Verify User is able to submit PEP  form
    Given User Navigate to PEP Form Page
    When User select "Business" as AOS in PEP form
    And User select "Associate" as Degree in PEP form
    And User select "Associate in Arts in Marketing" as Program in PEP form
    When User Fill PEP Form Data
    When User move to PEP RFI
    When User enter "PEP" as FirstName in PEP  Form
    And User enter "Form" as LastName in PEP Form
    And User enter "pepform@cunet.com" as Email in PEP Form
    And User enter "3232344567" as PhoneNumber in PEP Form
    And User enter "55111" as Zip in PEP Form
    When User click "AgreeandGo" button in PEP Form
    Then User should see the "200" Success Response Status code
    Then User should navigate to "Thank You" Thank you page

  @BannerRFI @SUEDU @Forms
  Scenario: TC001: Verify User is able to submit Banner form
    Given User Navigate to EDU Banner Forms Page
    When User move to BannerRFI
    And User enter "Banner" as FirstName in Banner form
    And User enter "Form" as LastName in Banner form
    And User enter "Bannerform@cunet.com" as Email in Banner form
    And User enter "3232377767" as PhoneNumber in Banner form
    And User enter "55111" as Zip in Banner form
    When User click "AgreeandGo" button in Banner form
    Then User should see the "200" Success Response Status code
    Then User should navigate to "Thank You" Thank you page

  @FooterRFI @SUEDU @Forms
  Scenario: TC002: Verify User is able to submit footer  form
    Given User Navigate to EDU Forms Page
    When User move to footerRFI
    And User enter "Footer" as FirstName in form
    And User enter "Form" as LastName in form
    And User enter "footerform@cunet.com" as Email in form
    And User enter "3232344567" as PhoneNumber in Footer form
    And User enter "55111" as Zip in form
    When User click "AgreeandGo" button in form
    Then User should see the "200" Success Response Status code
    Then User should navigate to "Thank You" Thank you page

  @FooterRFIValidations @SUEDU @Forms
  Scenario: TC003: Verify Error validations in Footer form
    Given User Navigate to EDU Forms Page
    When User move to footerRFI
    When User click "AgreeandGo" button in form
    Then User should see the "*Please enter all required Fields" for FirstName field
    When User move to footerRFI
    And User enter "Footer" as FirstName in form
    When User click "AgreeandGo" button in form
    Then User should see the "*Please enter all required Fields" for LastName field
    When User move to footerRFI
    And User enter "Form" as LastName in form
    When User click "AgreeandGo" button in form
    When User move to footerRFI
    Then User should see the "*Please enter all required Fields" for Email field
    And User enter "footerform@cunet.com" as Email in form
    When User click "AgreeandGo" button in form
    Then User should see the "*Please enter all required Fields" for PhoneNumber field
    When User move to footerRFI
    And User enter "3232344567" as PhoneNumber in form
    When User click "AgreeandGo" button in form
    Then User should see the "*Please enter all required Fields" for ZipCode field

  @BannerRFIValidations @SUEDU @Forms
  Scenario: TC004: Verify Error validations in Banner  form
    Given User Navigate to EDU Banner Forms Page
    When User move to BannerRFI
    When User click "AgreeandGo" button in Banner form
    Then User should see the "*Please enter all required Fields" for FirstName field
    When User move to BannerRFI
    And User enter "Banner" as FirstName in Banner form
    When User click "AgreeandGo" button in Banner form
    Then User should see the "*Please enter all required Fields" for LastName field
    When User move to BannerRFI
    And User enter "Form" as LastName in Banner form
    When User click "AgreeandGo" button in Banner form
    When User move to BannerRFI
    Then User should see the "*Please enter all required Fields" for Email field
    And User enter "Bannerform@cunet.com" as Email in Banner form
    When User click "AgreeandGo" button in Banner form
    Then User should see the "*Please enter all required Fields" for PhoneNumber field
    When User move to BannerRFI
    And User enter "3232344567" as PhoneNumber in Banner form
    When User click "AgreeandGo" button in Banner form
    Then User should see the "*Please enter all required Fields" for ZipCode field

  @DegreeHeaderForm @OMS @Forms
  Scenario: TC005: Verify user is able to submit Degree header form
    Given User Navigate to Degree Page
    When User move to Degree Page Utility Navigation
    When User Click on "LEARN MORE" link in Degree Page
    When User move to Degree Form
    And User enter "Degree" as FirstName in Degree form
    And User enter "Form" as LastName in Degree form
    And User enter "TA DIGITAL" as Company in Degree form
    And User enter "Mr Pradeep" as Title in Degree form
    And User enter "degreeform@cunet.com" as Email in Degree form
    And User enter "BEST COMPANY" as Comments in Degree form
    When User click "Submit" button in Degree form
    Then User should see the "200" Response Status code
    Then User should see the "Thank you for your interest in Degrees@Work." text on Window

  @DownloadFormMBA @OMS @Forms
  Scenario: TC006: Verify User is able to submit MBA download form
    Given User Navigate to Mobile Mba Page
    When User Click on "Download Now" Form link in Cheddar Page
    And User enter "Download" as FirstName in Download form
    And User enter "Form" as LastName in Download form
    And User enter "downloadform@cunet.com" as Email in Download form
    And User enter "3232344567" as PhoneNumber in Download form
    And User enter "55111" as Zip in Download form
    When User click "Submit" button in Download form
    Then User should see the "200" Response Status code
    Then User should see the "Thank you page - RFI " text on page

  @MicroSiteForminMBAEntrepreneurship @OMS @Forms
  Scenario: TC007: Verify User is able to submit Banner with Microsite form
    Given User Navigate to Cheddar Page
    When User move to MicroSite form
    And User enter "Cheddar" as FirstName in MicroSite form
    And User enter "Form" as LastName in MicroSite form
    And User enter "55111" as Zip in MicroSite form
    And User enter "cheddarform@cunet.com" as Email in MicroSite form
    And User enter "3232344567" as PhoneNumber in MicroSite form
    When User click "Agree and Go" button in MicroSite form
    Then User should see the "200" Response Status code
    Then User should see the "Thank you page - RFI | Digital Entrepreneurship MBA" text on page

  @MicroSiteForminMBAPage @OMS @Forms
  Scenario: TC008: Verify User is able to submit Banner with Microsite form in Mobile-Mba Page
    Given User Navigate to Mobile Mba Page
    When User move to MicroSite form
    And User enter "Mobile" as FirstName in MicroSite form
    And User enter "MBA" as LastName in MicroSite form
    And User enter "55111" as Zip in MicroSite form
    And User enter "mobilemba@cunet.com" as Email in MicroSite form
    And User enter "3232344567" as PhoneNumber in MicroSite form
    When User click "Agree and Go" button in MicroSite form
    Then User should see the "200" Response Status code
    Then User should see the "Thank you page - RFI | Digital Entrepreneurship MBA" text on page

  @DownloadFormCheddar @OMS @Forms
  Scenario: TC009: Verify User is able to submit Download form
    Given User Navigate to Cheddar Page
    When User Click on "Download Now" Form link in Cheddar Page
    And User enter "Download" as FirstName in Download form
    And User enter "Form" as LastName in Download form
    And User enter "downloadform@cunet.com" as Email in Download form
    And User enter "3232344567" as PhoneNumber in Download form
    And User enter "55111" as Zip in Download form
    When User click "Submit" button in Download form
    Then User should see the "200" Response Status code
    Then User should see the "Thank you page - RFI " text on page

  @NominateTeacherform @OMS @Forms
  Scenario: TC010: Verify User is able to submit Nominate a Teacher form
    Given User Navigate to Nominate Teacher Page
    When User move to Nominate Teacher form
    And User enter "Deepu" as Faculty First Name in Nominate form
    And User enter "Kumar" as Faculty Last Name in Nominate form
    And User enter "Osmania" as Campus in Nominate form
    And User enter "Automation Program" as Course in Nominate form
    And User enter "Reason" as Reason in Nominate form
    And User enter "Automation" as Student First Name in Nominate form
    And User enter "Script" as Student Last Name in Nominate form
    And User enter "Selenium" as Student Campus in Nominate form
    And User enter "4338" as Student Id in Nominate form
    When User click "Submit" button in Nominate form
    Then User should see the "200" Response Status code
    Then User should see the "Thank you | Strayer Commencement" text on page

  @LinkedInpageMBAForm @SUPMLP @Forms
  Scenario: TC011: Verify User is able to submit form in Linked In Home page
    Given User Navigate to LinkedIn Home Page
    When User enter "Linkedin" as FirstName in LinkedIn form
    And User enter "MBA" as LastName in LinkedIn form
    And User enter "linkedformmba@cunet.com" as Email in LinkedIn form
    And User enter "1234567890" as PhoneNumber in LinkedIn form
    And User enter "55111" as Zip in LinkedIn form
    And User Selects "Yes" as TransferCreditInterest Option in LinkedIn form
    When User click "Submit" button in LinkedIn form
    Then User should see the "200" Response Status code
    Then User should see the "Strayer University :: Thank You" text on page

  @LinkedInpageBBAForm @SUPMLP @Forms
  Scenario: TC012: Verify User is able to submit form in Linked In BBA page
    Given User Navigate to LinkedIn BBA Page
    When User enter "Linkedin" as FirstName in LinkedIn form
    And User enter "MBA" as LastName in LinkedIn form
    And User enter "linkedformmba@cunet.com" as Email in LinkedIn form
    And User enter "1234567890" as PhoneNumber in LinkedIn form
    And User enter "55111" as Zip in LinkedIn form
    And User Selects "Yes" as TransferCreditInterest Option in LinkedIn form
    When User click "Submit" button in LinkedIn form
    Then User should see the "200" Response Status code
    Then User should see the "Strayer University :: Thank You" text on page

  @ShortForm @SUPMLP @Forms
  Scenario: TC013: Verify User is able to submit Short form
    Given User move to Short form Page
    And User enter "Deepu" as FirstName in Short form
    And User enter "Kumar" as LastName in Short form
    And User enter "shortform@cunet.com" as Email in Short form
    And User enter "1234567890" as PhoneNumber in Short form
    And User enter "55111" as Zip in Short form
    And User Selects "Yes" as TransferCreditInterest Option in Short form
    And User click "AgreeandGo" button in Short form
    Then User should see the "200" Response Status code
    Then User should see the "Strayer University :: Thank You" text on page

  @ShortFormwithDropdown @SUPMLP @Forms
  Scenario: TC014: Verify User is able to submit Short form with drop downs
    Given User move to Short form with drop down Page
    When User select "MBA" as Degree in Short form
    And User select "Business Administration" as program of interest in Short form
    And User enter "Deepu" as FirstName in Short form
    And User enter "Kumar" as LastName in Short form
    And User enter "shortformdd@cunet.com" as Email in Short form
    And User enter "1234567890" as PhoneNumber in Short form
    And User enter "55111" as Zip in Short form
    And User Selects "Yes" as TransferCreditInterest Option in Short form with dropdown
    And User click "AgreeandGo" button in Short form
    Then User should see the "200" Response Status code
    Then User should see the "Strayer University : Thank You" text on page

  @TwoStepForm @SUPMLP @Forms
  Scenario: TC015: Verify User is able to submit Two Step  form
    Given User move to Two step  form Page
    When User enter "Two Step" as FirstName in Two Step form
    And User enter "Form" as LastName in Two Step form
    And User enter "HQA" as Address in Two Step form
    And User enter "55111" as Zip in Two Step form
    And User enter "1234567890" as PhoneNumber in Two Step form
    And User enter " twostepform@cunet.com" as Email in Two Step form
    When User click "Next" Button in Two Step form
    And User select "MBA" as Degree in Two Step form
    And User select "Business Administration" as program of interest in Two Step form
    And User Selects "Yes" as TransferCreditInterest Option in Two Step form
    When User click "AgreeandGo" button in Two Step form
    Then User should see the "200" Response Status code
    And User should see the "Strayer University :: Thank You" text on page

  @LongForm @SUPMLP @Forms
  Scenario: TC016: Verify User is able to submit Long form
    Given User move to Long  form Page
    And User enter "Long" as FirstName in Long form
    And User enter "Form" as LastName in Long form
    And User enter "HYDERABAD" as Address in Long form
    And User enter "longform@cunet.com" as Email in Long form
    And User enter "1234567890" as PhoneNumber in Long form
    And User enter "55111" as Zip in Long form
    #  And User select "Some post graduate" as Education Level in Long form
    And User select "Certificates" as Degree in Long form
    And User select "Digital Entrepreneurship" as program of interest in Long form
    And User Selects "Yes" as TransferCreditInterest Option in Long form
    When User click "AgreeandGo" button in Long form
    Then User should see the "200" Response Status code
    And User should see the "Strayer University :: Thank You" text on page

  @CheddarFormWithDropdown @OMS @Forms
  Scenario: TC017: Verify User is able to submit Cheddar form
    Given User Navigate to Cheddar Application Page
    When User move to MicroSite form
    And User enter "Cheddar with drop down" as FirstName in MicroSite form
    And User enter "Form" as LastName in MicroSite form
    And User enter "55111" as Zip in MicroSite form
    And User enter "cheddarformdd@cunet.com" as Email in MicroSite form
    And User enter "3232344567" as PhoneNumber in MicroSite form
    And User select "High School Graduate" as education level in form
    When User click "Agree and Go" button in MicroSite form
    Then User should see the "200" Response Status code
    Then User should see the "Thank you page - RFI | Digital Entrepreneurship MBA" text on page

  @CheddarDownloadForm @OMS @Forms
  Scenario: TC018: Verify User is able to submit Cheddar Download form
    Given User Navigate to Cheddar Application Page
    When User Click on "Download Now" Form link in Cheddar Page
    And User enter "Cheddar Download" as FirstName in Download form
    And User enter "Form" as LastName in Download form
    And User enter "cheddardownloadform@cunet.com" as Email in Download form
    And User enter "3232344567" as PhoneNumber in Download form
    And User enter "55111" as Zip in Download form
    And User select "High School Graduate" as education level in download form
    When User click "Submit" button in Cheddar Download form
    Then User should see the "200" Response Status code
    Then User should see the "Thank you page - RFI " text on page

  @PURL @SUPMLP @Forms
  Scenario Outline: TC019: Verify User is able to see PURL Data
    Given User Navigate to Lets Go Forms Page
    Then User move to Form
    And User see "<FirstName>" as FirstName in Form
    And User see "<LastName>" as LastName in Form
    And User see "<Address>" as Street Address in Form
    And User see "<EMAIL>" as Email in Form
    And User see "<PhoneNo>" as PhoneNumber in Form
    And User see "<ZIP>" as Zip in Form
    And User see "<Degree>" as Degree in Form
    And User see "<Area>" as Area of Interest in Form

    Examples: 
      | FirstName | LastName | Address              | EMAIL               | PhoneNo      | ZIP   | Degree     | Area                     |
      #| Morgan    | Washington | 2700 S Travis St Apt 201 | morgan.cherrelle.washington@gmail.com | 903-623-1105 | 75090 | Bachelor's | Select Area of Interest* |
      | Vanessa   | Truong   | 2801 Glen Sharon Way | huutho_tr@yahoo.com | 408-971-3937 | 95148 | Bachelor's | Select Area of Interest* |

  @AutoFillLinkedInFormUIVerification @SUPMLP @Forms
  Scenario Outline: : TC021: Verify User is able to submit form in Linked In Home page
    Given User Navigate to LinkedIn Home Page
    When User Enter "<Email>" ,  "<Password>" and Clicked on "Signin with LinkedIn" Button
    And User Click on "Auto fill with LinkedIn" Button
    Then User see "<FirstName>" as FirstName in LinedIn Form
    And User see "<LastName>" as LastName in LinedIn Form
    And User see "<Email>" as Email in LinedIn Form
    And User see "<PhoneNo>" as PhoneNumber in LinedIn Form
    And User see "<ZIP>" as Zip in LinedIn Form

    Examples: 
      | FirstName  | LastName | Email                        | Password | PhoneNo    | ZIP   |
      | Automation | Report   | StrayerAutoReports@gmail.com | Admin*12 | 6466469977 | 55111 |

  @AutoFillLinkedInFormSubmission @SUPMLP @Forms
  Scenario Outline: : TC022: Verify User is able to submit form in Linked In Home page
    Given User Navigate to LinkedIn Home Page
    When User Enter "<Email>" ,  "<Password>" and Clicked on "Signin with LinkedIn" Button
    And User Click on "Auto fill with LinkedIn" Button
    Then User see "<FirstName>" as FirstName in LinedIn Form
    And User see "<LastName>" as LastName in LinedIn Form
    And User see "<Email>" as Email in LinedIn Form
    And User see "<PhoneNo>" as PhoneNumber in LinedIn Form
    And User see "<ZIP>" as Zip in LinedIn Form
    And User Selects "Yes" as TransferCreditInterest Option in LinkedIn form
    When User click "Submit" button in LinkedIn form
    Then User should see the "200" Response Status code
    And User should see the "Strayer University :: Thank You" text on page

    Examples: 
      | FirstName  | LastName | Email                        | Password | PhoneNo    | ZIP   |
      | Automation | Report   | StrayerAutoReports@gmail.com | Admin*12 | 6466469977 | 55111 |

  @BemoreFormPre-population @SUPMLP @Forms
  Scenario Outline: : TC023: Verify User is able see Bemore Form Pre-population values in Bemore Page
    Given User Navigate to Bemore Forms Page
    Then User see "<FirstName>" as FirstName in Bemore Form
    And User see "<LastName>" as LastName in Bemore Form
    And User see "<Email>" as Email in Bemore Form
    And User see "<PhoneNo>" as PhoneNumber in Bemore Form
    And User see "<ZIP>" as Zip in Bemore Form

    Examples: 
      | FirstName  | LastName | Email                | PhoneNo      | ZIP |
      | Automation | Report   | Automation@cunet.com | 987-654-3210 |     |

  @EmailUsForm @CUEDU @Forms
  Scenario: TC_024: Verify user is able to subit Email Us form
    Given User is on Capella Home Page
    And User click Email Us link under the menu
    Then User move to Email Us Form
    And User select "Certificate" as Degree in Email form
    And User select "Business" as Area of Study in Email form
    And User select "Undergrad Cert - Accounting" as Specialization Study in Email form
    And User enter "Email" as First Name in Email form
    And User enter "Form" as Last Name in Email form
    And User enter email in Email Address in Email form
    And User enter PhoneNo as Phone Number in Email form
    And User enter "Test Comments" user Comments in Email form
    And User submit the Email form
    Then User should see the "200" Success Response Status code
    And User should get Thank you window for Email form
    And User should see "Thank you,Email." in the Thankyou Page for EmailUs Form
    And User click "Close" button in Thank you Sucess window in form

  @RequestInfoForm @CUEDU @Forms
  Scenario: TC_0025: Verify user is able to subit RFI form
    Given User is on Capella Home Page
    And User click Request Information link under the menu
    And User select "Certificate" as Degree in RFI form
    And User select "Business" as Area of Study in RFI form
    And User select "Undergrad Cert - Accounting" as Specialization Study in RFI form
    And User select "As soon as possible" as Start Date in RFI form
    And User enter "Request Info" as First Name in RFI form
    And User enter "Form" as Last Name in RFI form
    And User enter email in Email Address in RFI form
    And User enter PhoneNumber as Phone Number in RFI form
    And User enter "55111" as ZipCode in RFI form
    And User submit the RFI form
    Then User should see the "200" Success Response Status code
    And User should get Thank you window for RFI form
    And User should see "Thank you,Request Info." in the Thankyou Page for EmailUs Form
    And User click "Close" button in Thank you Sucess window in form

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

  @ReferaFriendForm @CUEDU @Forms
  Scenario: TC_027: Verify Single Course Registration form
    Given User is on Refer Friend Form Page
    Then User move to Refer Friend form
    And User enter "Automation" as First Name in Refer Friend form
    And User enter "User" as Last Name in Refer Friend form
    And User enter email in Email Address in Refer Friend form
    And User select "Student" as Option  in Consultation form
    And User enter "Friend" as Friend First Name in Refer Friend form
    And User enter "User" as Friend Last Name in Refer Friend form
    And User enter email in Friend Email Address in Refer Friend form
    And User enter PhoneNumber as Phone Number in Refer Friend form
    And User submit the Refer Friend form
    Then User should see the "200" Success Response Status code
    And User should get Thank you window for Refer Friend form

  @RegistrationForm @CUEDU @Forms
  Scenario: TC_028:  Verify user is able to submit My Capella Registration form
    Given User is on Capella Home Page
    And User click Login link to check MC Login
    And User click Prospective Students link under Login
    Then User get MC Login modal form to enter credentials
    And User click Create a new Account link in Login modal
    Then User get Create Account modal form
    And User enter "Capellaone" First Name Create Account form
    And User enter "Userone" Last Name in Create Account form
    And User enter an Email Address in Create Account form
    And User enter "Admin*12" Password in Create Account form
    And User enter "Admin*12" Confirm Password in Create Account form
    And User click the Create Account button in form
    Then User should see the "MY PROFILE" text on My Capella Dashboard

  @PasswordRestForm @CUEDU @Forms
  Scenario: TC_029: Verify user is able to submit Password Reset form
    Given User is on Capella Home Page
    And User click Login link to check MC Login
    And User click Prospective Students link under Login
    Then User get MC Login modal form to enter credentials
    And User Clikc on Reset Password Link
    Then User get Forgot Password form
    And User enter as "automation1@gmail.com" Email Address in Form
    And User Clikc on Request Password Button
    Then User get Reset Password Sucess Window

  @LoginForm @CUEDU @Forms
  Scenario: TC_030: Verify User is able to Log into My Capella Application
    Given User is on Capella Home Page
    And User click Login link to check MC Login
    And User click Prospective Students link under Login
    Then User get MC Login modal form to enter credentials
    And User enter "johnsin@gmail.com" username or email
    And User enter "Admin*12" password
    And User click LogIn button in form
    Then User should see the "MY PROFILE" text on My Capella Dashboard

  @PFQForm @CUEDU @Forms
  Scenario: TC_031: Verify User is able to Submit PFQ Form
    Given User is on PFQ Page
    When User Fill Quiz
    Then User Navigate to PFQ Form
    And User select "Certificate" as Degree
    And User select "Counseling" as Area of Study
    And User select "Grad Cert - Addictive Behavior" as Specialization
    And User enter "PFQ" as FirstName in PFQ Form
    And User enter "Form" as LastName in PFQ Form
    And User enter email in Email Address in PFQ Form
    And User enter PhoneNo as Phone Number in PFQ Form
    And User enter "99501" as Zip in PFQ Form
    When User click "AgreenGo" button in PFQ Form
    Then User should see the "200" Response Status code
    Then User should see the "100%" text on PFQ Page

 
  @IRFForm @CUPMLP @Forms
  Scenario: TC001:Verify user is able to submit Request Information form in Lp Bachelors Page
    Given User am on Capella LP Home Page
    When User Click on  "Request Program Details" RFP
    Then User should navigate to Request Information form
    And User select "Certificate" as Degree in LP form
    And User select "Analytics" as Area of Study in LP form
      And User select "Grad Cert - Analytics Using SAS" as Bachelors Specialization Study in LP form
    And User enter "LP" as First Name in LP form
    And User enter "Form" as Last Name in LP form
    And User enter "Email" in Email Address in LP form
    And User enter PhoneNumber as Phone Number in LP form
    And User enter "55111" as ZipCode in LP form
    And User submit the LP form
    And User should see "Thank you," in the Thankyou Page for LP Form
    And User should see "trigger=irf_submit" in Thankyou Page URL

  @LPHeaderNavigation @CUPMLP 
  Scenario Outline: TC002: Verify Link navigations in Header Navigation module in LP Home Page
    Given User am on Capella LP Home Page
    When User move to LP Utility Navigation
    And User Click on "<Link>" link
    Then User should see the "<PageTitle>" text and close tab

    Examples: 
      | Link                    | PageTitle                 |
      | Apply                   | Application for Admission |
      | 1.877.884.0733          | Online Degree Programs    |
      | Request Program Details | Online Degree Programs    |

  @LPFooterNavigation @CUPMLP 
  Scenario Outline: TC003: Verify Footer Link navigations in LP Home Page
    Given User am on Capella LP Home Page
    When User move to Footer
    And User Click on  "<Link>" Footer Link
    Then User should see the "<PageTitle>" text and close tab

    Examples: 
      | Link                | PageTitle                  |
      | Apply               | Application for Admission  |
      | University Policies | University Policies        |
      | Privacy Policy      | Privacy Policy             |
      | Legal               | Capella University - Legal |
      | Terms of Use        | Terms of Use               |
      | Ad Choices          | Advertising Choices        |

  @JumpLinks @CUPMLP 
  Scenario Outline: TC004:Verify Jump Links are working in Capella LP Home Page
    Given User am on Capella LP Home Page
    When User move to Jumplink Menu
    And User Click on  "<Jump_Link>" Jump Link
    Then User should see the "<Jump_Link_Module>" Jump link Module

    Examples: 
      | Jump_Link    | Jump_Link_Module                           |
      | overview     | container online-degree                    |
     | request      | form-wrapper  clearfix                     |
      | programs     | container heading-section pmlp-tab-section |
      | scholarships | container start-save py-4 pt-5 pb-5  | 

  @TAB_Accordion_ProgListing @CUPMLP 
  Scenario Outline: TC005: Verify Link navigations in Header Navigation module in LP Home Page
    Given User am on Capella LP PHD Page
    When User move to LP Accordion Module
    And User Clicks on "<Tab_Link>" on Tab Link
    And User Clicks on "<Accordion>" Accordion Button
    Then User Should See "<Programon>" In LP Accordion Module

    Examples: 
      | Tab_Link                     | Accordion                                          | Programon                                                 |
      | Counseling                   | PhD in Advanced Studies in Human Behavior          | Program Evaluation in Counselor Education and Supervision |
      | Counseling                   | PhD in Counselor Education & Supervision           | Counselor Education Teaching and                          |
      | Education                    | PhD in Education                                   | Instructional Design for                                  |
      | Education                    | EdD - Doctor of Education                          | Educational Leadership                                    |
      | Health Sciences              | DHA - Doctor of Health Administration              | General Health Administration                             |
      | Health Sciences              | DrPH - Doctor of Public Health                     | Design and Implementation of Public Health Strateg        |
      | Nursing                      | DNP - Doctor of Nursing Practice                   | DNP*                                                      |
      | Psychology                   | PhD in Psychology                                  | General Psychology                                        |
      | Psychology                   | PsyD - Doctor of Psychology in Clinical Psychology | Advanced Psychopathology                                  |
      | Psychology                   | PsyD - Doctor of Psychology in School Psychology   | Consultation and Collaboration in the Schools             |
      | Public Administration        | DPA - Doctor of Public Administration              | Theories and Concepts in Public Administration            |
      | Social Work & Human Services | DSW - Doctor of Social Work                        | Advanced Social Work Practice: Theoretical Perspec        |
      | Social Work & Human Services | DHS - Doctor of Human Services                     | Leadership and Organizational Management                  |
      | Social Work & Human Services | PhD in Human Services                              | Multidisciplinary Human Services                          |

  @PMLP_Thank_You_Hero @CUPMLP 
  Scenario: TC006:Verify user is able to submit Request Information form in Lp Bachelors Page
    Given User am on Capella LP Home Page
    When User Click on  "Request Program Details" RFP
    Then User should navigate to Request Information form
    And User select "Certificate" as Degree in LP form
    And User select "Analytics" as Area of Study in LP form
    And User select "Grad Cert - Analytics Using SAS" as Bachelors Specialization Study in LP form
    And User enter "LP" as First Name in LP form
    And User enter "Form" as Last Name in LP form
    And User enter "Email" in Email Address in LP form
    And User enter PhoneNumber as Phone Number in LP form
    And User enter "55111" as ZipCode in LP form
    And User submit the LP form
    And User should see "Thank you," in the Thankyou Page for LP Form
    And User should see "trigger=irf_submit" in Thankyou Page URL
    When User Clicks on View Programs Button in Thank you Hero
    Then User should see the "Online Graduate IT Certificate in Analytics: SAS | Capella University" text and close tab

  @IRF_Verification_LP_Pages @CUPMLP 
  Scenario Outline: TC007:Verify Request Information form is displaying in Key Pages
    Given User Navigate to " <Child_Page_URL>" LP page
    When User Click on  "<Link>" LP RFP
    Then User should navigate to Request Information form

    Examples: 
      | Child_Page_URL | Link                    |
      | home           | Request Program Details |
      | masters        | Request Program Details |
      | psychology     | Request Program Details |
      | flexpath       | Request Program Details |
      | bachelors      | Request Program Details |
      | rn-to-bsn      | Request Program Details |
      | it             | Request Program Details |
      | scholarships   | Request Program Details |
      | healthadmin    | Request Program Details |
      | mba            | Request Program Details |
    
    @IRF_Errorvalidatios @CUPMLP @Forms
  Scenario: TC008:Verify user is able to submit Request Information form in Lp Bachelors Page
    Given User am on Capella LP Home Page
    When User Click on  "Request Program Details" RFP
    And User submit the LP form
    Then User should see the "Please enter your degree" for Degree field in LP Form
    Then User should see the "Please enter your area of study" for AOS field in LP Form
    Then User should see the "Please enter your specialization." for Program field in LP Form
    Then User should see the "Please enter your first name" for FirstName field in LP Form
    Then User should see the "Please enter your last name" for LastName field in LP Form
    Then User should see the "Email is required" for Email field in LP Form
    Then User should see the "Phone number is required" for PhoneNumber field in LP Form
    Then User should see the "Please enter your ZIP/postal code" for ZipCode field in LP Form
       
   @IRFForm_Modal @CUPMLP @Forms
  Scenario: TC009:Verify user is able to submit Request Information form in Lp Bachelors Page
    Given User am on Capella LP Home Page
    When User Click on  "Request Program Details" RFP
    Then User should navigate to Request Information form
    And User select "Bachelor's" as Degree in LP form
    And User select "Public Health" as Area of Study in LP form
    And User select "BS - Public Health" as Bachelors Specialization Study in LP form
    And User select "High School Diploma" as Education Level in LP form
    And User select "18-23" as Age in LP form
    And User select "No" as Military option in LP form
    And User enter "LP" as First Name in LP form
    And User enter "Form" as Last Name in LP form
    And User enter "Email" in Email Address in LP form
    And User enter PhoneNumber as Phone Number in LP form
    And User enter "55111" as ZipCode in LP form
    And User submit the LP form
    Then User should see Thank you for your interest window
    When User Click on  "Visit Strayer University" CTA Link
    Then User should see the "Strayer University" text and close tab
    When User Click on  "Download the Strayer Guide" CTA Link
    Then User should see the "StrayerUniversityGuide" text and close tab 
    
    
     @BemoreFormPre-population_ErrorValidations @SUPMLP @Forms1
  Scenario Outline: : TC033: Verify User is able see Bemore Form Pre-population values in Bemore Page
    Given User Navigate to Bemore Forms Error Page
    And User enter "RFG" as Address in Long form
    And User see "<PhoneNo>" as PhoneNumber in Bemore Form
    When User click "AgreeandGo" button in Long form
    Then User should see the "Please enter valid phone number" for PhoneNumber field in Form

    Examples: 
      | PhoneNo      |
      | 187-654-3210 |