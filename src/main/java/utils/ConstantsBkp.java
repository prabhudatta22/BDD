package utils;

public class ConstantsBkp {
	
	private ConstantsBkp(){
	}

	/*  --------------------------------------------------------------------------------------------------------------------------------------- 
	 *  															FRAMEWORK CONSTANTS
	 *  --------------------------------------------------------------------------------------------------------------------------------------- 
	 */
	public static final String ROOT_DIR="user.dir";
	public static final String AUTHOR="harip";
	public static final String REGRESSION_CATEGORY="Regression";
	public static final String SMOKE_CATEGORY="Smoke";
	public static final String ACCEPTANCE_CATEGORY="Acceptance";
	
	
	/*  --------------------------------------------------------------------------------------------------------------------------------------- 
	 *  															SONARQUBE CONSTANTS
	 *  --------------------------------------------------------------------------------------------------------------------------------------- 
	 */
	public static final String EXECUTION_ENV="executionEnvironment";
	public static final String BROWSER="browser";
	public static final String PLATFORM="platform";
	public static final String VERSION="version";
	public static final String OS_VERSION="os_version";
	public static final String BROWSERSTACK_LOCAL = "browserstack.local";
	public static final String BROWSERSTACK_LOCAL_VALUE_FALSE="false";
	public static final String BROWSERSTACK_LOCAL_VALUE_TRUE="true";
	public static final String BROWSERSTACK_DEBUG="browserstack.debug";
	public static final String BROWSERSTACK_DEBUG_VALUE_TRUE="true";
	public static final String BROWSERSTACK_DEBUG_VALUE_FALSE="false";
	public static final String FIREFOX="FIREFOX";
	public static final String CHROME ="CHROME";
	public static final String IE = "IE";

	

	/*  --------------------------------------------------------------------------------------------------------------------------------------- 
	 *  															REPORTING CONSTANTS
	 *  --------------------------------------------------------------------------------------------------------------------------------------- 
	 */
	public static final String OR_ACTUAL_TITLE="Actual Title: ";
	public static final String OR_START_FONT_TAG="<font color=";
	public static final String OR_END_FONT_TAG="</font>";
	

	/*  --------------------------------------------------------------------------------------------------------------------------------------- 
	 *  															CLOUD RELATED CONSTANTS
	 *  --------------------------------------------------------------------------------------------------------------------------------------- 
	 */
	public static final String SAUCE_USERNAME = "ram.pushpala";
	public static final String SAUCE_ACCESS_KEY = "b177d05e-599d-48d4-bb13-59df1b24b42c";
	public static final String SAUCE_URL = "http://" + SAUCE_USERNAME + ":" + SAUCE_ACCESS_KEY + "@ondemand.saucelabs.com:80/wd/hub";
	public static final String SAUCE_TAGS = "SauceTest";
	public static final String SAUCE_IE_VERSION = "15.15063";
	public static final String SAUCE_APPIUM_VERSION ="1.8.1";
	public static final String SAUCE_DEVICE_NAME="Samsung Galaxy Nexus GoogleAPI Emulator";
	public static final String SAUCE_DEVICE_ORIENTATION = "portrait";
	public static final String SAUCE_ANDROID_PLATFORM_VERSION ="4.4";
	public static final String SAUCE_ANDROID_PLATFORM_NAME = "Android";
	

	public static final String BROWSERSTACK_USERNAME = "harikrishnap1";
	public static final String BROWSERSTACK_ACCESS_KEY = "egoVP5Ag6CMfmzhf4yAy";
	public static final String BROWSERSTACK_URL = "https://" + BROWSERSTACK_USERNAME + ":" + BROWSERSTACK_ACCESS_KEY + "@hub-cloud.browserstack.com/wd/hub";
	public static final String BROWSERSTACK_TAGS = "BrowserStackTest";
	public static final String BROWSERSTACK_OS = "Windows";
	public static final String BROWSERSTACK_OS_VERSION = "10";
	public static final String BROWSERSTACK_IE_VERSION = "17.0";

	public static final String SEETEST_USERNAME = "maruthip@techaspect.com";
	public static final String SEETEST_PASS = "Testing@123";
	public static final String SEETEST_ACCESS_KEY = "eyJ4cC51IjoxMDg2NDM3LCJ4cC5wIjoxMDg2NDM2LCJ4cC5tIjoiTVRVek16azVOemc0Tmprd09RIiwiYWxnIjoiSFMyNTYifQ.eyJleHAiOjE4NDkzNTc4ODgsImlzcyI6ImNvbS5leHBlcml0ZXN0In0.L17fidN9BxB5dk1Le5LZn6XhDlvdeQeSYww03voDW80";
	public static final String SEETEST_CHROME_VERSION = "66";
	public static final String SEETEST_CHROME_PLATFORM = "WIN10";
	public static final String SEETEST_FIREFOX_PLATFORM = "WIN10";
	public static final String SEETEST_FIREFOX_VERSION = "57.0.2";
	public static final String SEETEST_IE_PLATFORM = "WIN10";
	public static final String SEETEST_IE_VERSION = "11";
	
	public static final String CHROME_PLATFORM = "Windows 10";
	public static final String CHROME_VERSION = "67.0";
	public static final String FIREFOX_PLATFORM = "Windows 8";
	public static final String FIREFOX_VERSION = "57.0";
	public static final String IE_PLATFORM = "Windows 7";

	/*  --------------------------------------------------------------------------------------------------------------------------------------- 
	 *  																LOCATORS
	 *  --------------------------------------------------------------------------------------------------------------------------------------- 
	 */
	
	/* Base Page */
	public static final int DRIVER_TIME_OUT = 30;
	
	/* Landing Page */
	public static final String OR_EMAIL="email";
	public static final String OR_PASS="pass";
	public static final String OR_LOGIN="//input[@value='Log In']";
	public static final String OR_FIRSTNAME = "firstname";
	public static final String OR_LASTNAME ="lastname";
	public static final String OR_REG_EMAIL = "reg_email__";
	public static final String OR_REG_PASS="reg_passwd__";
	
	/* HomePage */
	public static final String OR_SEARCH = "//input[@name='q']";
	
	
	
	
		
}
