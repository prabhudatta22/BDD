/**
 ******************************************************************************
 * 							  BDD FRAMEWORK
 *  							CONFIDENTIAL
 *							COPYRIGHTS TO DARWINBOX
 *							
 * *****************************************************************************
 */

package com.qa.util;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.Cookie;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.qa.factory.DriverManager;

public abstract class BasePage<T> {

	private String handles;
	/** This variable is for waitTime. */
	private final long waitTime = 10;
	public static final int DRIVER_TIME_OUT = 30;

	public T openPage(Class<T> clazz) {
		T page = null;
		AjaxElementLocatorFactory ajaxLocatorFactory = new AjaxElementLocatorFactory(DriverManager.getDriver(),
				DRIVER_TIME_OUT);
		page = PageFactory.initElements(DriverManager.getDriver(), clazz);

		PageFactory.initElements(ajaxLocatorFactory, page);
		return page;
	}

	public void initialize(String url) {
		DriverManager.getDriver().get(url);
	}

	@SuppressWarnings("unchecked")
	public void waitForPageLoad(@SuppressWarnings("rawtypes") ExpectedCondition pageLoadCondition) {
		WebDriverWait wait = new WebDriverWait(DriverManager.getDriver(), DRIVER_TIME_OUT);
		wait.until(pageLoadCondition);
	}

	/**
	 * This method will return response code.
	 * 
	 * @param urlString
	 */
	public static int getResponseCode(String urlString) {
		URL u;
		try {
			u = new URL(urlString);
			HttpURLConnection connection = (HttpURLConnection) u.openConnection();
			return connection.getResponseCode();

		} catch (MalformedURLException e) {
			System.out.println(e.getStackTrace());
		} catch (IOException e) {
			System.out.println(e.getStackTrace());
		}
		return 0;
	}

	/**
	 * This method returns cookie value if cookie is present.
	 * 
	 * @param name
	 */
	public String getCookieValue(String name) {
		Cookie ck = DriverManager.getDriver().manage().getCookieNamed(name);
		if (ck == null) {
			System.out.println("getCookieValue: No cookie found with name='" + name + "'");
			return "";
		} else {
			return ck.getValue();
		}
	}


	/**
	 * This method returns number of openWindows.
	 * 
	 * @param name
	 */
	public int numberOfOpenWindows() {
		Set<String> set = DriverManager.getDriver().getWindowHandles();
		System.out.println("Number of open windows : " + set.size());
		return set.size();
	}

	/**
	 * Refresh the webpage in the browser
	 */
	public void refreshPage() {
		DriverManager.getDriver().navigate().refresh();
		System.out.println("refreshPage - reload webpage executed");
	}

	/**
	 * This method is for clicking on an element.
	 * 
	 * @param element
	 * @param elementName
	 */
	public void click(WebElement element, String elementName) {
		System.out.println("Clicked on " + elementName);
		element.click();
	}

	/**
	 * This method is for typing text.
	 * 
	 * @param element
	 * @param text
	 * @param elementName
	 */
	public void type(WebElement element, String text, String elementName) {
		element.sendKeys(text);
		System.out.println("Entered " + "<b>" + text + "</b>" + " as " + elementName);
	}

	/**
	 * This method is for fluentWait.
	 * 
	 * @param secs
	 */
	public void fluentWait(long secs) {
		try {
			ExpectedCondition<Boolean> pageLoadFinishedCondition = new ExpectedCondition<Boolean>() {
				public Boolean apply(WebDriver driver) {
					return ((JavascriptExecutor) driver).executeScript("return document.readyState").equals("complete");
				}
			};

			WebDriverWait wait = new WebDriverWait(DriverManager.getDriver(), secs);
			wait.until(pageLoadFinishedCondition);
		} catch (Exception ex) {
			System.out.println(ex.getStackTrace());
		}
	}

	public boolean waitForAjax() {
		WebDriverWait wait = new WebDriverWait(DriverManager.getDriver(), 30);
		ExpectedCondition<Boolean> jQueryLoad = new ExpectedCondition<Boolean>() {
			@Override
			public Boolean apply(WebDriver driver) {
				try {
					return ((Long) ((JavascriptExecutor) DriverManager.getDriver())
							.executeScript("return jQuery.active") == 0);
				} catch (Exception e) {

					return true;
				}
			}
		};
		ExpectedCondition<Boolean> jsLoad = new ExpectedCondition<Boolean>() {
			@Override
			public Boolean apply(WebDriver driver) {
				return ((JavascriptExecutor) DriverManager.getDriver()).executeScript("return document.readyState")
						.toString().equals("complete");
			}
		};

		return wait.until(jQueryLoad) && wait.until(jsLoad);
	}

	/**
	 * This method is for pageloadWait.
	 * 
	 * @param secs
	 */
	public void pageloadWait(long secs) {
		DriverManager.getDriver().manage().timeouts().pageLoadTimeout(secs, TimeUnit.SECONDS);
	}

	/**
	 * This method is for implicitWait.
	 * 
	 * @param secs
	 */
	public void implicitWait(long secs) {
		DriverManager.getDriver().manage().timeouts().implicitlyWait(secs, TimeUnit.SECONDS);
	}

	/**
	 * This method is for switchHandle.
	 */
	public void switchHandle() {
		handles = DriverManager.getDriver().getWindowHandle();
		for (String winHandle : DriverManager.getDriver().getWindowHandles()) {
			if (!handles.equals(winHandle)) {
				DriverManager.getDriver().switchTo().window(winHandle);
			}
		}
	}

	/**
	 * This method is for switchBackFromHandle.
	 */
	public void switchBackFromHandle() {
		DriverManager.getDriver().switchTo().window(handles);
	}

	/**
	 * This method is for getElement.
	 * 
	 * @param by
	 * @param secs
	 * @return webElement
	 * 
	 */
	public WebElement getElement(By by, long secs) {
		WebElement webElement = null;
		try {
			webElement = (new WebDriverWait(DriverManager.getDriver(), secs))
					.until(ExpectedConditions.presenceOfElementLocated(by));
		} catch (Exception ex) {
			System.out.println(ex.getStackTrace());
		}
		return webElement;
	}

	/**
	 * This method is for getElementLoop.
	 * 
	 * @param by
	 * @param secs
	 * @param loop
	 * @return webElement
	 */
	public WebElement getElementLoop(By by, long secs, int loop) {
		WebElement webElement = null;
		for (int index = 0; index < loop; index++) {
			webElement = getElement(by, secs);
			if (webElement != null) {
				return webElement;
			}
		}
		return webElement;
	}

	/**
	 * This method is for getElementLoop.
	 * 
	 * @param by
	 * @param secs
	 * @return
	 */
	public WebElement getElementLoop(By by, long secs) {
		return getElementLoop(by, secs, 3);
	}

	/**
	 * This method is for getElementList.
	 * 
	 * @param by
	 * @param secs
	 * @return list
	 */
	public List<WebElement> getElementList(By by, long secs) {
		List<WebElement> list = null;
		try {
			list = (new WebDriverWait(DriverManager.getDriver(), secs))
					.until(ExpectedConditions.presenceOfAllElementsLocatedBy(by));
		} catch (Exception ex) {
			System.out.println("getElementList EXCEPTION : " + ex.toString());
		}
		return list;
	}

	/** Generate random ID for testing. */
	/**
	 * This method is for getRandomNumber.
	 * 
	 * @param min
	 * @param max
	 * @return integer
	 */
	public int getRandomNumber(int min, int max) {
		return (min + (int) (Math.random() * ((max - min) + 1)));
	}

	/**
	 * This method is for waitForElementToClickable.
	 * 
	 * @param ele
	 * @param waitTime
	 * @return boolean
	 */
	public boolean waitForElementToClickable(WebElement ele, int waitTime) {
		return waitForElementToClickable(ele, waitTime);
	}

	/**
	 * This method is for clickElementFromList.
	 * 
	 * @param by
	 * @return WebElement
	 */
	protected void clickElementFromList(By by) {
		List<WebElement> list = getElementList(by, 5);
		System.out.println("CLICK ELEMENT LIST: " + list);
		// need to select randomly one option from list
		int random = getRandomNumber(0, list.size() - 1);
		WebElement ele = list.get(random);
		System.out.println("RANDOM ELEMENT SELECTED: " + list.size() + " - " + ele.getClass() + "--" + ele.toString());
		waitForElementToClickable(ele, 2);
		ele.click(); // select the question
	}

	/**
	 * Checks if the element is in the DOM and displayed.
	 * 
	 * @param by - selector to find the element
	 * @return true or false
	 */
	public boolean isElementPresentAndDisplay(By by) {
		try {
			return DriverManager.getDriver().findElement(by).isDisplayed();
		} catch (NoSuchElementException e) {
			System.out.println("isElementPresentAndDisplay EXCEPTION : " + e.toString());
			return false;
		}
	}

	/**
	 * Checks if the element is in the DOM and displayed.
	 * 
	 * @param by - selector to find the element
	 * @return true or false
	 */
	public boolean isElementPresentAndDisplay(WebElement element) {
		try {
			return element.isDisplayed();
		} catch (Exception e) {
			System.out.println("isElementPresentAndDisplay EXCEPTION : " + e.toString());
			return false;
		}
	}

	/**
	 * This method is for quitDriver.
	 * 
	 */
	public void quitDriver() {
		if (DriverManager.getDriver() != null) {
			DriverManager.getDriver().quit();
		}
	}

	public String executeJavascript(String javascript) {
		return String.valueOf(((JavascriptExecutor) DriverManager.getDriver()).executeScript(javascript));
	}

	/**
	 * This method is for initializeElements.
	 * 
	 * @param obj
	 */
	public void initializeElements(Object obj) {
		PageFactory.initElements(DriverManager.getDriver(), obj);
	}

	/**
	 * This method is for waitForElementToVisible.
	 * 
	 * @param ele
	 * @return
	 */
	public boolean waitForElementToVisible(WebElement ele) {
		return waitForElementToVisible(ele, waitTime);

	}

	/**
	 * This method is for waitForElementToVisible.
	 * 
	 * @param ele
	 * @param secs
	 * @return
	 */
	public boolean waitForElementToVisible(WebElement ele, long secs) {
		boolean flag = false;
		try {
			flag = (new WebDriverWait(DriverManager.getDriver(), secs))
					.until(ExpectedConditions.elementToBeSelected(ele));
		} catch (Exception ex) {
		}
		return flag;
	}

	/**
	 * This method is for mouseOverElement.
	 * 
	 * @param ele
	 */
	public void mouseOverElement(WebElement ele) {

		Actions action = new Actions(DriverManager.getDriver());
		action.moveToElement(ele).build().perform();

		fluentWait(2);
	}

	public void jsClick(WebElement pageElement, String logMessage) {
		try {
			((JavascriptExecutor) DriverManager.getDriver()).executeScript("arguments[0].click();", pageElement);
			System.out.println("Verify click action on: " + logMessage);
		} catch (Exception exception) {
			System.out.println(exception.getLocalizedMessage());

		}
	}

	public void highlightElement(WebElement element) {

		JavascriptExecutor js = (JavascriptExecutor) DriverManager.driver.get(); 
		js. executeScript("arguments[0].setAttribute('style', 'background: orange; border: 4px solid green;');" , element); 

	}

	public void highlightElements(String Css) {
		WebElement element = DriverManager.driver.get().findElement(org.openqa.selenium.By.cssSelector(Css));
		for (int i = 0; i < 6; i++) {
			JavascriptExecutor js = (JavascriptExecutor) DriverManager.driver.get();
			js.executeScript("arguments[0].setAttribute('style', 'background: orange; border: 6px solid red;');",
					element);
		}
	}

	public void closeTabs() {
		String originalHandle = DriverManager.driver.get().getWindowHandle();
		for (String handle : DriverManager.driver.get().getWindowHandles()) {
			if (!handle.equals(originalHandle)) {
				DriverManager.driver.get().switchTo().window(handle);
				DriverManager.driver.get().close();
			}
		}

		DriverManager.driver.get().switchTo().window(originalHandle);
	}

	public String SwitchTab() {
		ArrayList<String> tabs2 = new ArrayList<String>(DriverManager.driver.get().getWindowHandles());
		DriverManager.driver.get().switchTo().window(tabs2.get(1));
		String cp = DriverManager.driver.get().getTitle();
		DriverManager.driver.get().switchTo().window(tabs2.get(0));
		return cp;
	}

	public void navigateToURL(String url) {
		DriverManager.getDriver().get(url);
		closeAlert();
	}

	public void closeAlert() {
		System.out.println("Alert present");
		DriverManager.getDriver().switchTo().alert().accept();
		System.out.println("Alert Disabled");
	}


}
