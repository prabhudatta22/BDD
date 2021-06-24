/**
 ******************************************************************************
 * 							  REUSABLE FRAMEWORK
 *  							CONFIDENTIAL
 *							COPYRIGHTS TO TECHASPECT
 *							
 * *****************************************************************************
 */

package com.qa.factory;

import java.net.MalformedURLException;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.safari.SafariDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.github.bonigarcia.wdm.WebDriverManager;

public class DriverFactory {
	private static WebDriver driver;
	public static ThreadLocal<WebDriver> tlDriver = new ThreadLocal<>();

	private DriverFactory() {
	}

	public static WebDriverWait wait = null;

	/**
	 * This method is to create a driver instance for what is configured in
	 * configuration file.
	 * 
	 * @param browserName
	 * @throws MalformedURLException
	 */
	public static WebDriver init_driver(String browser) throws MalformedURLException {

		System.out.println("browser value is: " + browser);

		if (browser.equals("chrome")) {
			WebDriverManager.chromedriver().setup();
			driver = new ChromeDriver();
			DriverManager.setDriver(driver);
		} else if (browser.equals("firefox")) {
			WebDriverManager.firefoxdriver().setup();
			driver = new FirefoxDriver();
			DriverManager.setDriver(driver);
		} else if (browser.equals("safari")) {
			driver = new SafariDriver();
			DriverManager.setDriver(driver);
		} else {
			System.out.println("Please pass the correct browser value: " + browser);
		}
		DriverManager.maximizeBrowser(driver);
		return DriverManager.getDriver();
	}


	/**
	 * This method is to kill the driver.
	 */
	public static void destroyDriver() {
		if (DriverManager.getDriver() != null)
			DriverManager.getDriver().quit();
	}
}
