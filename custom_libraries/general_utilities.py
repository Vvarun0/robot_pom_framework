from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn


class general_utilities:
    def __init__(self):
        self.selenium_lib = BuiltIn.get_library_instance('SeleniumLibrary')

    @keyword
    def custom_log(self, message):
        """"Logs a custom message to Robot framework log"""
        print(f"CUSTOM LOG:{message}")

    @keyword
    def get_element_text_by_css(self, locator):
        """Returns the text of an element found by CSS selector"""
        return self.selenium_lib.get_text(f"css={locator}")
