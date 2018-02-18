package uk.co.bty;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import static org.junit.Assert.assertEquals;

public class GameStepDefs {

    private String myChoice;
    private String theirChoice;

    @Given("^I have chosen \"([^\"]*)\"$")
    public void iHaveChosen(String choice) {
        this.myChoice = choice;
    }

    @When("^the opponent chooses \"([^\"]*)\"$")
    public void theOpponentChooses(String choice) {
        this.theirChoice = choice;
    }

    @Then("^I should (win|lose|draw)$")
    public void iShould(String expected) {
        assertEquals(expected, new Game().play(myChoice, theirChoice));
    }
}
