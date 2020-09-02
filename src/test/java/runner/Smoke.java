package runner;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.junit.runner.RunWith;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Parameters;

import com.cucumber.listener.Reporter;

import cucumber.api.CucumberOptions;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.junit.Cucumber;
import cucumber.api.testng.AbstractTestNGCucumberTests;
import setup.TestSetUp;
import utils.DriverManager;

@RunWith(Cucumber.class)
@CucumberOptions(format = { "pretty", "json:target/json/output.json" }, features = {
	"src/test/resources/features/SMOKE/SmokeSuite.feature" },

	glue = { "steps" }, plugin = {
		"com.cucumber.listener.ExtentCucumberFormatter:target/cucumber-reports/report.html" }, monochrome = true
// tags = "@EDU"
)
public class Smoke extends AbstractTestNGCucumberTests {

    @BeforeClass
    @Parameters({ "mobiledevice" })
    public void devicePreCheck(String device) {
	System.out.println("Device status is :" + device);
	System.out.println("Device status before updating..." + TestSetUp.deviceCheck);
	TestSetUp.deviceCheck = device;
    }

    @After
    public void tearDown(Scenario scenario) throws IOException {

	if (DriverManager.getDriver() == null || DriverManager.getDriver().toString().contains("(null)"))
	    return;
	if (scenario.isFailed() || scenario.getStatus().equalsIgnoreCase("failed")) {
	    final byte[] screenshot = ((TakesScreenshot) DriverManager.getDriver()).getScreenshotAs(OutputType.BYTES);
	    scenario.embed(screenshot, "image/png");
	    File scrFile = ((TakesScreenshot) DriverManager.getDriver()).getScreenshotAs(OutputType.FILE);
	    String screenshotName = "QA";
	    String dateName = new SimpleDateFormat("yyyyMMddhhmmss").format(new Date());
	    FileUtils.copyFile(scrFile,
		    new File("H:\\SEI\\FailedTestsScreenshots\\" + screenshotName + dateName + ".png"));
	    byte[] screenshotBytes = ((TakesScreenshot) DriverManager.getDriver()).getScreenshotAs(OutputType.BYTES);
	    scenario.embed(screenshotBytes, "image/png");
	    Reporter.addScreenCaptureFromPath("H:\\SEI\\FailedTestsScreenshots\\" + screenshotName + dateName + ".png");
	    // Reporter.addScreenCaptureFromPath(screenshotName);
	    // FileUtils.copyFile(scrFile, new
	    // File("H:\\StrayerMigration\\FailedTestsScreenshots\\+"screenshot_"+"Date".png"));
	    DriverManager.getDriver().close();
	    DriverManager.getDriver().quit();
	}
    }

    @AfterClass
    public static void writeExtentReport() throws IOException {

	Reporter.loadXMLConfig(new File("src/test/resources/extent-config.xml"));
	Reporter.setSystemInfo("user", System.getProperty("user.name"));
	Reporter.setSystemInfo("os", "Windows-7");
	Reporter.setTestRunnerOutput("Sample test runner output message");

    }
}
