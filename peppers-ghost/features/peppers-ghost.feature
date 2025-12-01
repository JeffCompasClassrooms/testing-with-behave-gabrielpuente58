Feature: Wikipedia Search and Navigation
    As a knowledge seeker
    I want to search and navigate Wikipedia
    So that I can find information on various topics

Scenario: Search for a specific topic
    Given I navigate to Wikipedia homepage
    When I search for "Python programming"
    Then I should see search results

Scenario: Navigate to a random article
    Given I navigate to Wikipedia homepage
    When I click on random article
    Then I should be on a valid article page

Scenario: Check main page logo exists
    Given I navigate to Wikipedia homepage
    Then I should see the Wikipedia logo

Scenario: Verify language selector is available
    Given I navigate to Wikipedia homepage
    Then I should see language options

Scenario: Search and verify article title
    Given I navigate to Wikipedia homepage
    When I search for "Albert Einstein"
    Then the article title should contain "Einstein"

Scenario: Check article has content sections
    Given I navigate to Wikipedia homepage
    When I search for "Machine Learning"
    Then the article should have content sections

Scenario: Verify navigation menu exists
    Given I navigate to Wikipedia homepage
    Then I should see the main navigation menu

Scenario: Search box clears properly
    Given I navigate to Wikipedia homepage
    When I type "Test" in search box
    Then I should see search suggestions

Scenario: Check footer contains links
    Given I navigate to Wikipedia homepage
    Then I should see footer links

Scenario: Verify search suggestions appear
    Given I navigate to Wikipedia homepage
    When I type "Artificial" in search box
    Then I should see search suggestions

Scenario: Access article history
    Given I navigate to Wikipedia homepage
    When I search for "Solar System"
    And I click on view history
    Then I should see the article history page

Scenario: Check sidebar navigation
    Given I navigate to Wikipedia homepage
    Then I should see the sidebar navigation

Scenario: Verify article categories
    Given I navigate to Wikipedia homepage
    When I search for "Biology"
    Then the article should have categories

Scenario: Check external links section
    Given I navigate to Wikipedia homepage
    When I search for "Internet"
    Then the article should have an external links section

Scenario: Verify references section exists
    Given I navigate to Wikipedia homepage
    When I search for "World War II"
    Then the article should have references

Scenario: Navigate using table of contents
    Given I navigate to Wikipedia homepage
    When I search for "Climate Change"
    Then I should see a table of contents

Scenario: Check article images
    Given I navigate to Wikipedia homepage
    When I search for "Eiffel Tower"
    Then the article should contain images

Scenario: Verify talk page link exists
    Given I navigate to Wikipedia homepage
    When I search for "Shakespeare"
    Then I should see a link to the talk page

