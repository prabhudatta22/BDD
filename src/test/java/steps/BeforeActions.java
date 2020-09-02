package steps;

import java.io.IOException;

import cucumber.api.java.Before;
import setup.TestSetUp;
import utils.DriverFactory;


public class BeforeActions extends TestSetUp {

	@Before
	public void setUp() throws IOException {
		//setUpBrowser();
		//DriverFactory.createDriverInstance(configProperty.getProperty("browser"));
		initialize();
		DriverFactory.createDriverInstance(configProperty.getProperty("browser"));
		//SeleniumDriver.setUpDriver();
	}
}