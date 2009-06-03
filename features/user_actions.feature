Feature: User Actions
    In Order to manage my posts
    As a user
    I Want to be able to log in and out

    Background:
        Given the following user records
            | username  | password  | admin |
            | bob       | secret    | false |
            | admin     | secret    | true  |

    Scenario: Login link shown if not logged in
        When I go to the homepage
        Then I should see "Login"

    Scenario: Logout link shown if logged in
        Given I am logged in as "admin" with password "secret"
        When I go to the homepage
        Then I should see "Logout"

    Scenario: Logout when logged in
        Given I am logged in as "admin" with password "secret"
        When I go to the homepage
        And I follow "Logout"
        Then I should see "Login"

    Scenario: need to see who we are
        Given I am logged in as "bob" with password "secret"
        And I go to the homepage
        Then I should see "You are logged in as bob"