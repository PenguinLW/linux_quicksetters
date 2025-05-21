from selenium import webdriver
from selenium.webdriver.chrome.options import Options

options = Options()
options.add_experimental_option("debuggerAddress", "localhost:9222")
driver = webdriver.Chrome(options=options)
driver.get("https://www.bitrix24.ru/")
print(driver.title)
driver.quit()
