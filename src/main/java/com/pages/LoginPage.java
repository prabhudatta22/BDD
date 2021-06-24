package com.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

import com.qa.factory.DriverManager;

public class LoginPage {	
	
	@FindBy(how = How.ID, using = "UserLogin_username")
	private WebElement emailId;
	
	@FindBy(how = How.ID, using = "UserLogin_password")
	private WebElement password;
	
	@FindBy(how = How.ID, using = "login-submit")
	private WebElement signInButton;
	
	@FindBy(how = How.ID, using = "employee-search_dashboard")
	private WebElement searchBar;
	

	// 2. Constructor of the page class:
	public LoginPage() {
//		this.driver = driver;
		PageFactory.initElements(DriverManager.getDriver(), this);
	}

	// 3. page actions: features(behavior) of the page the form of methods:
//
//	public String getLoginPageTitle() {
//		return driver.getTitle();
//	}
//
//	public boolean isForgotPwdLinkExist() {
//		return driver.findElement(searchBar).isDisplayed();
//	}
//
//	public void enterUserName(String username) {
//		driver.findElement(emailId).sendKeys(username);
//	}
//
//	public void enterPassword(String pwd) {
//		driver.findElement(password).sendKeys(pwd);
//	}
//
//	public void clickOnLogin() {
//		driver.findElement(signInButton).click();
//	}

	public void doLogin(String un, String pwd) {
		System.out.println("login with: " + un + " and " + pwd);
		emailId.sendKeys(un);
		password.sendKeys(pwd);
		signInButton.click();
	}


}
