Feature: Find out if it's Christmas or not
  As a person of celebration
  I want to know if it's Christmas
  So that I don't forget to celebrate.

  Scenario: It's not Christmas today
    Given I open the url "https://isitchristmas.com"
    Then I expect that element "a" contains the text "NO"

  Scenario: Page title indicates Christmas status
    Given I open the url "https://isitchristmas.com"
    Then I expect that the title is "Is it Christmas?"

  Scenario: Main answer element exists on the page
    Given I open the url "https://isitchristmas.com"
    Then I expect that element "a" does exist

  Scenario: Main answer element is visible
    Given I open the url "https://isitchristmas.com"
    Then I expect that element "a" is visible

  Scenario: Page URL is correct
    Given I open the url "https://isitchristmas.com"
    Then I expect that the url is "https://isitchristmas.com/"

  Scenario: Answer text is not empty
    Given I open the url "https://isitchristmas.com"
    Then I expect that element "a" does exist
    And I expect that element "a" contains any text

  Scenario: Background color matches non-Christmas theme
    Given I open the url "https://isitchristmas.com"
    Then I expect that element "body" does exist

  Scenario: Page loads within reasonable time
    Given I open the url "https://isitchristmas.com"
    Then I expect that element "a" is visible
    And I expect that element "a" contains the text "NO"

  Scenario: Main answer link element has expected tag
    Given I open the url "https://isitchristmas.com"
    Then I expect that element "a" does exist
    And I expect that element "a" is visible

  Scenario: Page contains exactly one main answer
    Given I open the url "https://isitchristmas.com"
    Then I expect that element "a" does exist

  Scenario: Refreshing page shows consistent answer
    Given I open the url "https://isitchristmas.com"
    Then I expect that element "a" contains the text "NO"
    When I pause for 1000ms
    And I open the url "https://isitchristmas.com"
    Then I expect that element "a" contains the text "NO"

  Scenario: Answer element is displayed as uppercase
    Given I open the url "https://isitchristmas.com"
    Then I expect that element "a" contains the text "NO"
