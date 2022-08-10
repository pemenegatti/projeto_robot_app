from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import keyword
from appium.webdriver.common.touch_action import TouchAction


@keyword(name='Scroll To Element')
def scroll_to_element(locator):
    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application()
    element = driver.find_element(locator)

    actions = TouchAction(driver)
    actions.scroll_from_element(element, 10, 100)
    actions.scroll(10, 100)
    actions.perform()

@keyword(name='Drag And Drop')
def drag_drop(element_id, p_origin, p_target):
    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application()

    ele_origin = driver.find_element(element_id[int(p_origin)])
    ele_target = driver.find_element(element_id[int(p_target)])

    actions = TouchAction(driver)
    actions.long_press(ele_origin).move_to(ele_target)
    actions.release()
    actions.perform()

@keyword(name='Touch Up')
def touch_up(self):
    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application()

    actions = TouchAction(driver)
    actions.tap_and_hold(20, 20)
    actions.release(50, 50)
    actions.perform()

@keyword(name='Touch Down')
def touch_down(locator):
    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application()

    actions = TouchAction(driver)
    actions.tap_and_hold(locator)
    actions.release(50, 50)
    actions.perform()

@keyword(name='Scroll App Down')
def scroll_app_down(self):
    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application()
    screen_size = driver.get_window_size()
    x = screen_size['width'] / 2
    y = screen_size['height'] - 300
    driver.swipe(x, y, x, 300)

@keyword(name='Scroll App Up')
def scroll_app_up(self):
    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application()
    screen_size = driver.get_window_size()
    x = screen_size['width'] / 2
    y = screen_size['height'] - 300
    driver.swipe(x, 300, x, y)
