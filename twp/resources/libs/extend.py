from robot.libraries.BuiltIn import BuiltIn 
from robot.api.deco import keyword
from appium.webdriver.common.touch_action import TouchAction 

@keyword(name='Drag And Drop')
def drag_drop(elementId, origin, target):
    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application() 

    elementOrigin = driver.find_elements_by_id(elementId)[int(origin)]
    elementTarget = driver.find_elements_by_id(elementId)[int(target)]

    actions = TouchAction(driver)
    actions.long_press(elementOrigin).move_to(elementTarget)
    actions.release()
    actions.perform()
