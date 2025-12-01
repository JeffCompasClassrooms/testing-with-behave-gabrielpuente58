# Behave Testing Assignment

This repository contains two Behave test suites demonstrating different testing approaches for web applications.

**Author**: Gabriel Puente

## Projects Overview

### 1. isitchristmas
Tests the simple "Is It Christmas?" website using **built-in behave-webdriver steps**.
- **URL**: https://isitchristmas.com
- **Scenarios**: 12 test scenarios ✅ ALL PASSING
- **Approach**: Uses only built-in step definitions from behave-webdriver
- **Features Tested**: Page loading, element visibility, text content, URL validation, page consistency, title verification

### 2. peppers-ghost
Tests Wikipedia using **custom step definitions**.
- **URL**: https://en.wikipedia.org
- **Scenarios**: 18 test scenarios ✅ ALL PASSING
- **Approach**: Custom-written step definitions with contextual, domain-specific language
- **Features Tested**: Search functionality, navigation, random articles, article structure, content sections, images, links, history pages, categories, references, table of contents, sidebar, footer

## Test Results

### isitchristmas
```
1 feature passed, 0 failed, 0 skipped
12 scenarios passed, 0 failed, 0 skipped
30 steps passed, 0 failed, 0 skipped, 0 undefined
Execution time: ~3 seconds
```

### peppers-ghost
```
1 feature passed, 0 failed, 0 skipped
18 scenarios passed, 0 failed, 0 skipped
50 steps passed, 0 failed, 0 skipped, 0 undefined
Execution time: ~48 seconds
```

## Setup Instructions

### Prerequisites
- Python 3.8 or higher
- Chrome browser installed
- ChromeDriver (automatically managed)

### Installation

1. Clone this repository:
```bash
git clone <your-repo-url>
cd testing-with-behave-gabrielpuente58
```

2. Install required Python packages:
```bash
pip install -r requirements.txt
```

Or install packages individually:
```bash
pip install behave==1.2.6
pip install behave-webdriver==0.3.1
pip install selenium==3.141.0
pip install 'urllib3<2'
```

## Running the Tests

### Run isitchristmas tests:
```bash
cd isitchristmas
python -m behave
```

### Run peppers-ghost tests:
```bash
cd peppers-ghost
python -m behave
```

### Run tests with verbose output:
```bash
python -m behave -v
```

### Run a specific feature file:
```bash
python -m behave features/is_it_christmas.feature
```

## Project Structure

```text
.
├── README.md
├── requirements.txt
├── isitchristmas/
│   ├── behave_output.txt         # Test execution output
│   └── features/
│       ├── environment.py        # Setup and teardown for Chrome
│       ├── is_it_christmas.feature   # 12 scenarios using built-in steps
│       └── steps/
│           └── builtin_steps.py  # Imports behave-webdriver built-in steps
└── peppers-ghost/
    ├── behave_output.txt         # Test execution output
    └── features/
        ├── environment.py        # Setup and teardown for Chrome
        ├── peppers-ghost.feature # 18 scenarios with custom language
        └── steps/
            └── peppers-steps.py  # Custom step definitions
```

## Test Design Philosophy

### isitchristmas (Built-in Steps)
- Focuses on basic web testing capabilities
- Tests page structure and content
- Validates consistent behavior across page loads
- Uses declarative behave-webdriver step definitions
- Examples:
  - `Given I open the url "https://isitchristmas.com"`
  - `Then I expect that element "a" contains the text "NO"`
  - `Then I expect that the title is "Is it Christmas?"`

### peppers-ghost (Custom Steps)
- Demonstrates advanced testing with custom step definitions
- Tests complex user workflows and interactions
- Validates dynamic content and navigation
- Uses contextual, domain-specific language in step definitions
- Examples of good step wording:
  - ✅ `When I search for "Python programming"`
  - ✅ `Then I should see search results`
  - ✅ `When I click on random article`
  - ✅ `Then the article title should contain "Einstein"`
  - ❌ Avoided: `When I enter "Python" into input "#search"`

## Key Features

### isitchristmas Scenarios
1. It's not Christmas today
2. Page title indicates Christmas status
3. Main answer element exists on the page
4. Main answer element is visible
5. Page URL is correct
6. Answer text is not empty
7. Background color matches non-Christmas theme
8. Page loads within reasonable time
9. Main answer link element has expected tag
10. Page contains exactly one main answer
11. Refreshing page shows consistent answer
12. Answer element is displayed as uppercase

### peppers-ghost Scenarios
1. Search for a specific topic
2. Navigate to a random article
3. Check main page logo exists
4. Verify language selector is available
5. Search and verify article title
6. Check article has content sections
7. Verify navigation menu exists
8. Search box clears properly
9. Check footer contains links
10. Verify search suggestions appear
11. Access article history
12. Check sidebar navigation
13. Verify article categories
14. Check external links section
15. Verify references section exists
16. Navigate using table of contents
17. Check article images
18. Verify talk page link exists

## Notes

- All tests assume the applications are functioning correctly
- Tests are designed to pass under normal circumstances
- Chrome browser window will open during test execution
- Tests include appropriate waits for page loading and dynamic content
- Custom steps in peppers-ghost demonstrate best practices for writing readable, maintainable test scenarios
- Both test suites have been executed successfully with output saved in `behave_output.txt` files

## Troubleshooting

If tests fail:
1. Ensure Chrome browser is up to date
2. Check internet connection (tests require access to external websites)
3. Verify all dependencies are installed: `pip list | grep -E 'behave|selenium'`
4. Try running with verbose output: `python -m behave -v`
5. Check ChromeDriver compatibility with your Chrome version

## Technical Details

- **Testing Framework**: Behave (Gherkin-style BDD)
- **Web Automation**: Selenium WebDriver
- **Browser**: Chrome (via ChromeDriver)
- **Python Version**: 3.8+
- **Built-in Steps**: behave-webdriver 0.3.1
- **Selenium Version**: 3.141.0
- **urllib3 Version**: <2 (for compatibility)
