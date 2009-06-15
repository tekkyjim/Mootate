Feature:
    In Order to manage my Scenarios
    As a User
    I want to be able to manage Scenarios


    Background:
        Given the following user records
            | username  | password  | admin |
            | bob       | secret    | false |
            | admin     | secret    | true  |
            | harry     | secret    | false |

    Scenario: Should not be able to make scenario when not logged in
        When I go to the scenarios page
        Then I should not see "New Scenario"

    Scenario:  Create a scenario when logged in
        Given I am logged in as "bob" with password "secret"
        When I go to the scenarios page
        Then I should see "New Scenario"
        
    Scenario: Basic Scenario creation test
        Given I am logged in as "bob" with password "secret"
        And I have no scenarios
        When I go to the scenarios page
        And I follow "New Scenario"
        And I fill in "GameName" with "Test Game"
        And I fill in "GameDescription" with "a short test using cucumber"
        And I select "Open" from "EntryType"
        And I press "Submit"
        Then I should have 1 scenario

