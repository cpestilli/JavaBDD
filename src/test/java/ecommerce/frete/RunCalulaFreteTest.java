package ecommerce.frete;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions( 
			plugin = { "pretty", "html:target/cucumber" },
			glue = "br.unicamp.ecommerce.frete",
			features = "classpath:features/CalculaFrete.feature")
public class RunCalulaFreteTest {

}
