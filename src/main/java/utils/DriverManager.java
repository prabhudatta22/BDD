/**
 ******************************************************************************
 * 							  REUSABLE FRAMEWORK
 *  							CONFIDENTIAL
 *							COPYRIGHTS TO TECHASPECT
 *							
 * *****************************************************************************
 */

package utils;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;

public class DriverManager {
	
	private DriverManager(){
	}

	public static ThreadLocal<WebDriver> driver = new ThreadLocal<>();

	/**
	 * This method is for getDriver.
	 */
	public static WebDriver getDriver() {
		return DriverManager.driver.get();
	}
	
	/**
	 * This method is for setDriver.
	 * @param driver
	 */
	public static void setDriver(WebDriver driver) {
		DriverManager.driver.set(driver);
	}


	/**
	 * This method is for maximizing the browser.
	 * @param driver
	 */
	public static void maximizeBrowser(WebDriver driver) {
		driver.manage().window().maximize();
	}

	/**
	 * This method is for setting implicit wait.
	 * @param driver
	 */
	public static void setImplicitWait(WebDriver driver) {
		driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
	}
	
	public static void tearDown() {
		if (driver != null) {
			//driver.get().quit();
			DriverManager.getDriver().close();
			DriverManager.getDriver().quit();
			//DriverManager.getDriver().
		    //  driver.remove();
		}
	}
}
