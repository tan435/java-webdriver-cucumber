@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    And I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @predefined2
  Scenario: Predefined steps for Yahoo
    Given I open url "https://www.yahoo.com/"
    Then I should see page title as "Yahoo"
    Then element with xpath "//input[@id='header-search-input']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='header-search-input']"
    And I click on element with xpath "//button[@id='header-desktop-search-button']"
    Then I wait for element with xpath "//*[@id='web']" to be present
    Then element with xpath "//*[@id='web']" should contain text "Cucumber"

  @predefined3
  Scenario: Predefined steps for Bing
    Given I open url "https://www.bing.com/"
    Then I should see page title as "Bing"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    And  I click on element with xpath "//label[@for='sb_form_go']"
    And I wait for 3 sec
    Then I wait for element with xpath "//ol[@id='b_results']" to be present
    Then element with xpath "//ol[@id='b_results']" should contain text "Cucumber"

  @predefined4
  Scenario: Predefined steps for gibiru
    Given I open url "https://gibiru.com/"
    Then I should see page title contains "Gibiru"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    And I click on element with xpath "//button[@id='button-addon2']"
    And I wait for 3 sec
    Then I wait for element with xpath "//*[@class='col-lg-8 col-md-12 col-sm-12']" to be present
    Then element with xpath "//*[@class='col-lg-8 col-md-12 col-sm-12']" should contain text "Cucumber"

  @predefined5
  Scenario: Predefined steps for DuckDuckGo
    Given I open url "https://duckduckgo.com/"
    Then I should see page title contains "DuckDuckGo"
    Then element with xpath "//input[@id='search_form_input_homepage']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='search_form_input_homepage']"
    When I click on element with xpath "//input[@id='search_button_homepage']"
    Then I wait for element with xpath "//div[contains(@class,'js-site-wrapper')]" to be present
    Then element with xpath "//div[contains(@class,'js-site-wrapper')]" should contain text "Cucumber"

  @predefined6
  Scenario: Predefined steps for swisscows
    Given I open url "https://swisscows.com"
    Then I should see page title contains "Swisscows"
    Then element with xpath "//input[@name='query']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='query']"
    When I click on element with xpath "//button[@class='search-submit']//*[@class='icon']"
    And I wait for 3 sec
    Then I wait for element with xpath "//div[@class='page-results']" to be present
    Then element with xpath "//div[@class='page-results']" should contain text "Cucumber"

  @predefined7
  Scenario: BoardReader
    Given I open url "http://boardreader.com/"
    Then I should see page title contains "Boardreader"
    Then element with xpath "//input[@id='title-query']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='title-query']"
    When I click on element with xpath "//button[@id='title-submit']"
    And I wait for 3 sec
    Then I wait for element with xpath "//ul[@class='mdl-list']" to be present
    Then element with xpath "//ul[@class='mdl-list']" should contain text "Behavior"

  @predefined8
  Scenario: Predefined steps for ecosia
    Given I open url "https://www.ecosia.org/"
    Then I should see page title contains "Ecosia"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    When I click on element using JavaScript with xpath "//button[@type='submit'][@role='button']"
    Then I wait for element with xpath "//div[@class='mainline-results']" to be present
    Then element with xpath "//div[@class='mainline-results']" should contain text "Behavior"

  @predefined9 @smoke
  Scenario: Predefined steps for searchencrypt
    Given I open url "https://www.searchencrypt.com/"
    Then I should see page title contains "Search Encrypt"
    Then element with xpath "//input[@placeholder='Search...']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@placeholder='Search...']"
    When I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then I wait for element with xpath "//div[@class='serp__web-result__container']" to be present
    And I wait for 3 sec
    Then element with xpath "//div[@class='serp__web-result__container']" should contain text "Behavior"

  @predefined10 @smoke
  Scenario: Predefined steps for Startpage.com
    Given I open url "https://www.startpage.com/"
    Then I should see page title contains "Startpage.com"
    Then element with xpath "//input[@id='query']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='query']"
    When I click on element with xpath "//span[@class='search-form__button-icon']"
    And I wait for 3 sec
    Then I wait for element with xpath "//div[@class='mainline-results--default']" to be present
    Then element with xpath "//div[@class='mainline-results--default']" should contain text "Behavior"

  @quote1
  Scenario: Responsive UI
    Given I open url "https://skryabin.com/market/quote.html"
    And I resize window to 1280 and 1024
    Then element with xpath "//b[@id='location']" should be displayed
    And I resize window to 800 and 1024
    Then element with xpath "//b[@id='location']" should be displayed
    And I resize window to 400 and 1024
    Then element with xpath "//b[@id='location']" should not be displayed

  @quote2
  Scenario: Min length
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "a" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='username-error']" should be displayed
    And I clear element with xpath "//input[@name='username']"
    When I type "ab" into element with xpath "//input[@name='username']"
    Then element with xpath "//*[@id='username-error']" should not be displayed

  @quote3
  Scenario: Email field
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "tanya.com" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should contain text "Please enter a valid email"
    When I clear element with xpath "//input[@name='email']"
    When I type "tanya@proskurina.com" into element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='email-error']" should not be displayed

  @quote4
  Scenario: Password field
    Given I open url "https://skryabin.com/market/quote.html"
    Then element with xpath "//input[@id='password']" should have attribute "value" as ""
    Then element with xpath "//input[@id='confirmPassword']" should be disabled

  @quote5
  Scenario: Name field
    Given I open url "https://skryabin.com/market/quote.html"
    When I click on element with xpath "//input[@id='name']"
    And element with xpath "//div[@aria-describedby='nameDialog']" should be displayed
    When I type "Tanya" into element with xpath "//input[@id='firstName']"
    When I type "Proskurina" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//span[text()='Save']"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "Tanya Proskurina"

  @quote6
  Scenario: Privacy Policy
    Given I open url "https://skryabin.com/market/quote.html"
    Then element with xpath "//*[contains(text(),'accept Privacy Policy')]" should be displayed
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should be displayed

  @quote7-11
  Scenario:  Data entering and verification
    Given I open url "https://skryabin.com/market/quote.html"
    # entering required fields
    When I type "tproskurina" into element with xpath "//input[@name='username']"
    And I type "tproskurina@123.com" into element with xpath "//input[@name='email']"
    And I type "12345" into element with xpath "//input[@id='password']"
    And I type "12345" into element with xpath "//input[@id='confirmPassword']"
    And I click on element with xpath "//input[@id='name']"
    And I type "Tanya" into element with xpath "//input[@id='firstName']"
    And I type "Yu" into element with xpath "//input[@id='middleName']"
    And I type "Proskurina" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//span[contains(text(),'Save')]"
    And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
      # entering non-required fields
    And I type "12345" into element with xpath "//input[@name='phone']"
    And I click on element with xpath "//select[@name='countryOfOrigin']/option[@value='Ukraine']"
    And I click on element with xpath "//input[@name='gender' and @value='female']"
    And I click on element with xpath "//input[@name='allowedToContact']"
    And I type "Death Valley" into element with xpath "//textarea[@id='address']"
    And I click on element with xpath "//option[contains(text(),'BMW')]"
    # 3rd Party Agreement (+alert validation)
    When I click on element with xpath "//button[@id='thirdPartyButton']"
    And I dismiss alert
    Then element with xpath "//div/*[@id='thirdPartyAgreement']" should have attribute "value" as "declined"
    Then element with xpath "//span[@id='thirdPartyResponseMessage']" should contain text "You did not accept"
    When I click on element with xpath "//button[@id='thirdPartyButton']"
    And I accept alert
    Then element with xpath "//div/*[@id='thirdPartyAgreement']" should have attribute "value" as "accepted"
    Then element with xpath "//span[@id='thirdPartyResponseMessage']" should contain text "You accepted"
    # Date of Birth (+ Date Picker validation)
    And I click on element with xpath "//input[@id='dateOfBirth']"
    And I click on element with xpath "//select[@class='ui-datepicker-year']/option[@value='1920']"
    And I click on element with xpath "//select[@class='ui-datepicker-month']/option[@value='0']"
    And I click on element with xpath "//a[@title='Prev']"
    Then element with xpath "//select[@class='ui-datepicker-month']/option[@value='11']" should have attribute "selected" as "true"
    Then element with xpath "//select[@class='ui-datepicker-year']/option[@value='1919']" should have attribute "selected" as "true"
    When I click on element with xpath "//a[@title='Next']"
    Then element with xpath "//select[@class='ui-datepicker-month']/option[@value='0']" should have attribute "selected" as "true"
    Then element with xpath "//select[@class='ui-datepicker-year']/option[@value='1920']" should have attribute "selected" as "true"
    And I click on element with xpath "//td[@data-handler='selectDay']/a[text()='16']"
    # Additional Information iFrame
    When I switch to iframe with xpath "//iframe[@name='additionalInfo']"
    And I type "Motya" into element with xpath "//input[@id='contactPersonName']"
    And I type "123321" into element with xpath "//input[@id='contactPersonPhone']"
    When I switch to default content
    # Working with a new window
#   Then element with xpath "//ul/li" should contain text "Document 1"
 #   Then element with xpath "//ul/li[2]" should contain text "Document 2"
  #  Then element with xpath "//ul/li[3]" should contain text "Document 3"
   # When I switch to default content
    # Change Address
    Then I clear element with xpath "//textarea[@id='address']"
    And I type "Yocemite" into element with xpath "//textarea[@id='address']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then I wait for 3 sec
    # Data Validation
    Then element with xpath "//b[@name='username']" should contain text "tproskurina"
    Then element with xpath "//b[@name='firstName']" should contain text "Tanya"
    Then element with xpath "//b[@name='name']" should contain text "Tanya Yu Proskurina"
    Then element with xpath "//b[@name='countryOfOrigin']" should contain text "Ukraine"
    Then element with xpath "//b[@name='carMake']" should contain text "BMW"
    Then element with xpath "//b[@name='email']" should contain text "tproskurina@123.com"
    Then element with xpath "//b[@name='middleName']" should contain text "Yu"
    Then element with xpath "//b[@name='phone']" should contain text "123"
    Then element with xpath "//b[@name='gender']" should contain text "female"
    Then element with xpath "//b[@name='agreedToPrivacyPolicy']" should contain text "true"
    Then element with xpath "//b[@name='password']" should contain text "[entered]"
    Then element with xpath "//b[@name='lastName']" should contain text "Proskurina"
    Then element with xpath "//b[@name='dateOfBirth']" should contain text "01/16/1920"
    Then element with xpath "//b[@name='address']" should contain text "Yocemite"
    Then element with xpath "//b[@name='thirdPartyAgreement']" should contain text "accepted"
    Then element with xpath "//b[@name='contactPersonName']" should contain text "Motya"
    Then element with xpath "//b[@name='contactPersonPhone']" should contain text "123321"

  @quote12
  Scenario:  Working with new windows
    Given I open url "https://skryabin.com/market/quote.html"
    Then I click on element with xpath "//a[@id='link']"
    Then element with xpath "//ul/li" should contain text "Document 1"
    Then element with xpath "//ul/li[2]" should contain text "Document 2"
    Then element with xpath "//ul/li[3]" should contain text "Document 3"
    Then I switch to default content