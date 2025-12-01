import behave_webdriver
from behave_webdriver.steps import *
import os

def before_all(context):
    # Set up Chrome driver using behave-webdriver's Chrome method
    try:
        # Manually point to chromedriver
        chrome_driver_path = '/Users/gabrielpuente/.wdm/drivers/chromedriver/mac64/142.0.7444.61/chromedriver-mac-arm64/chromedriver'
        
        if os.path.exists(chrome_driver_path):
            os.environ['PATH'] = os.path.dirname(chrome_driver_path) + os.pathsep + os.environ['PATH']
        
        context.behave_driver = behave_webdriver.Chrome()
    except Exception as e:
        print(f"Error setting up Chrome driver: {e}")
        raise

def after_all(context):
    if hasattr(context, 'behave_driver'):
        context.behave_driver.quit()
