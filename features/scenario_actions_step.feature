Feature:
    In Order to manage my Scenarios
    As a User
    I want to be able to create and delete Scenarios


    Background:
        Given the following user records
            | username  | password  | admin |
            | bob       | secret    | false |
            | admin     | secret    | true  |
    Scenario: Should not be able to make scenario when not logged in
        When I go to the scenarios page
        Then I should not see "New Scenario"

    Scenario:  Create a scenario when logged in
        Given I am logged in as "bob" with password "secret"
        When I go to the scenarios page
        Then I should see "New Scenario"
        

