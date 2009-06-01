Feature: User Management
    In Order to log in and out
    As a user
    I Want to be able to log in and out

    Scenario: Login link shown if not logged in
        When I go to the homepage
        Then I should see "Login"

    Scenario: Logout link shown if logged in
        Given I am logged in as "testy" with password "secret"
        When I go to the homepage
        Then I should see "Logout"