package steps;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;

import com.cucumber.listener.Reporter;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import utils.DriverManager;


public class AfterActions {

	@After
	public static void tearDown(Scenario scenario) throws IOException{
		WebDriver driver = DriverManager.getDriver();
		if(scenario.isFailed()){
			System.out.println("Scenario: " + scenario.getName()+ ": FAIL");
			File scrFile = ((TakesScreenshot)driver).getScreenshotAs(OutputType.FILE);
			// Now you can do whatever you need to do with it, for example copy somewhere
			String screenshotName = "QA";
			String dateName = new SimpleDateFormat("yyyyMMddhhmmss").format(new Date());
		FileUtils.copyFile(scrFile, new File("X:\\IT_Grps\\MarTech\\Strayer Migration\\"+screenshotName+dateName+".png"));
			byte[] screenshotBytes = ((TakesScreenshot) DriverManager.getDriver()).getScreenshotAs(OutputType.BYTES);
             scenario.embed(screenshotBytes, "image/png");
             Reporter.addScreenCaptureFromPath("X:\\IT_Grps\\MarTech\\Strayer Migration\\"+screenshotName+dateName+".png");
			
		}else{
			System.out.println("Scenario: " + scenario.getName()+ ": PASS");
		}
		DriverManager.tearDown();
	}
	
}
