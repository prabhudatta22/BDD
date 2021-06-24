package parallel;

import java.util.List;
import java.util.Map;

import org.junit.Assert;

import com.pages.AccountsPage;
import com.pages.LoginPage;
import com.qa.factory.DriverManager;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class AccountsPageSteps {

	private LoginPage loginPage = new LoginPage();
	private AccountsPage accountsPage = new AccountsPage();;

	@Given("user has already logged in to application")
	public void user_has_already_logged_in_to_application(DataTable credTable) {

		List<Map<String, String>> credList = credTable.asMaps();
		String userName = credList.get(0).get("username");
		String password = credList.get(0).get("password");

		DriverManager.getDriver()
		.get("https://payroll.qa.darwinbox.io/");
		loginPage.doLogin(userName, password);

	}


	@Given("user clicks on the profile")
	public void user_clicks_on_the_profile() throws InterruptedException {
		Thread.sleep(3000);
		accountsPage.tapProfile();
	}

	@When("selects switch to admin option")
	public void selects_switch_to_admin_option() throws InterruptedException {
		Thread.sleep(4000);
		accountsPage.slectSwitchOption();

	}

	@When("refresh the page")
	public void refresh_the_page() throws InterruptedException {
		Thread.sleep(4000);
		accountsPage.refreshThePage();

	}

	@When("clicks on the Reports tab")
	public void clicks_on_the_reports_tab() throws InterruptedException {
		Thread.sleep(4000);
		accountsPage.selectReportTab();

	}

	@When("selects {string} from the module dropdown")
	public void selects_from_the_module_dropdown(String moduleValue) throws InterruptedException {
		Thread.sleep(4000);
		accountsPage.clickModuleDropdownValue(moduleValue);

	}

	@When("selects {string} from the roaster dropdown")
	public void selects_from_the_roaster_dropdown(String roasterValue) {
		accountsPage.clickRoasterDropdownValue(roasterValue);

	}

	@Then("report filter should be displayed")
	public void report_filter_should_be_displayed() throws InterruptedException {
		Thread.sleep(4000);
		Assert.assertTrue(accountsPage.isFilterDisplayed());

	}
}
