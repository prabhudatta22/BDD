package com.pages;

import java.util.List;

import org.apache.poi.ss.formula.functions.T;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

import com.qa.factory.DriverManager;
import com.qa.util.BasePage;

public class AccountsPage extends BasePage<T>{

	@FindBy(how = How.XPATH, using = "//div[@class='profile-img']")
	private List<WebElement> profile;

	@FindBy(how = How.XPATH, using = "//select[@id='year']")
	private WebElement filter;

	@FindBy(how = How.XPATH, using = "//div[@id='sel_main_roster_chosen']")
	private List<WebElement> moduleDropdown;

	@FindBy(how = How.XPATH, using = "//div[@id='sel_attendance_roster_chosen']")
	private List<WebElement> roasterDropdown;

	@FindBy(how = How.XPATH, using = "//*[@href='/reports/index']/div")
	private WebElement reportsTab;

	@FindBy(how = How.XPATH, using = "//li[@class='border-tb  mb-4']")
	private List<WebElement> switchLink;

	public AccountsPage() {
		PageFactory.initElements(DriverManager.getDriver(), this);
	}


	public void tapProfile() {
		profile.get(1).click();

	}

	public boolean isFilterDisplayed() {
		return filter.isDisplayed();
	}

	public void clickModuleDropdownValue(String roasterValue) {
		moduleDropdown.get(0).click();
		DriverManager.getDriver().findElement(By.xpath("//li[text() = '" + roasterValue + "']")).click();

	}

	public void clickRoasterDropdownValue(String roasterTypeValue) {
		roasterDropdown.get(0).click();
		DriverManager.getDriver().findElement(By.xpath("//li[text() = '" + roasterTypeValue + "']")).click();

	}

	public void selectReportTab() {
		JavascriptExecutor js = (JavascriptExecutor) DriverManager.getDriver();
		js.executeScript("window.scrollBy(0,500)"); 		
		reportsTab.click();

	}

	public void refreshThePage() {
		DriverManager.getDriver().navigate().refresh();

	}

	public void slectSwitchOption() {
		switchLink.get(0).click();

	}


}
