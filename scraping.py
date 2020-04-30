from selenium import webdriver
import json


def selenium(event, context):
    chrome = Chrome()
    chrome.get('https://google.com')
    title = chrome.title
    chrome.quit()
    return {
        'statusCode': 200,
        'body': json.dumps(title)
    }


def Chrome():
    options = webdriver.ChromeOptions()
    options.binary_location = "/opt/python/bin/headless-chromium"
    options.add_argument("--headless")
    options.add_argument("--disable-gpu")
    options.add_argument("--window-size=1280x1696")
    options.add_argument("--disable-application-cache")
    options.add_argument("--disable-infobars")
    options.add_argument("--no-sandbox")
    options.add_argument("--hide-scrollbars")
    options.add_argument("--enable-logging")
    options.add_argument("--log-level=0")
    options.add_argument("--single-process")
    options.add_argument("--ignore-certificate-errors")
    options.add_argument("--homedir=/tmp")
    chrome = webdriver.Chrome(
        "/opt/python/bin/chromedriver", chrome_options=options)
    return chrome
