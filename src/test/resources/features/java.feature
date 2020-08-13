@java
  Feature: Java feature

    @java1
    Scenario: Hello world
      Given I say hello world
      And I say "hello again"
      And I say "say hello!"
      And I perform actions with "apple" and "orange"
      And I calculate numbers
      And I work with arrays
      And I print if number "35" is positive
      And I print "7"th day of week

    @java2
    Scenario: my var
      Given I perform actions with "my var" and "my VAR"

    @java3
    Scenario: my famaly
      Given My strings concatenation "me", "husband", and "son"

      @login
      Scenario: Testing user login
        Given I open login page
        And I enter valid credentials for "user"
        And I land on dashboard
        And I don't see admin controls

    @login
    Scenario: Testing user login
      Given I open login page
      And I enter valid credentials for "admin"
      And I land on dashboard
      And I don't see admin controls