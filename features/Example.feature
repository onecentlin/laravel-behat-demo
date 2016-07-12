Feature: Example
    In order to test Behat
    I want to test some behat features


Scenario: Visit Homepage
    Given I am on homepage
    Then I should see "Laravel 5"

Scenario: Dashboard
    Given I go to "home"
    #Then the url should match "auth/login"
    Then I can do something with Laravel