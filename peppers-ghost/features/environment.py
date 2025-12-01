import behave_webdriver
from selenium import webdriver
import os

def before_all(context):
    # Set up Chrome driver - using regular selenium driver for custom steps
    try:
        chrome_options = webdriver.ChromeOptions()
        # Uncomment the line below to run in headless mode
        # chrome_options.add_argument('--headless')
        chrome_options.add_argument('--no-sandbox')
        chrome_options.add_argument('--disable-dev-shm-usage')
        
        # Use the manually downloaded chromedriver
        chrome_driver_path = '/Users/gabrielpuente/.wdm/drivers/chromedriver/mac64/142.0.7444.61/chromedriver-mac-arm64/chromedriver'
        
        if os.path.exists(chrome_driver_path):
            context.behave_driver = webdriver.Chrome(
                executable_path=chrome_driver_path,
                options=chrome_options
            )
        else:
            # Fallback: try system chromedriver
            context.behave_driver = webdriver.Chrome(options=chrome_options)
    except Exception as e:
        print(f"Error setting up Chrome driver: {e}")
        raise

def after_all(context):
    if hasattr(context, 'behave_driver'):
        context.behave_driver.quit()
