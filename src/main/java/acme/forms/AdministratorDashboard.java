package acme.forms;

import java.io.Serializable;
import java.util.Map;

import org.springframework.data.util.Pair;

import acme.entities.patronages.Status;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AdministratorDashboard implements Serializable {

	protected static final long	serialVersionUID= 1L;

	// Attributes -------------------------------------------------------------

	int	numberOfComponents;
	Map<Pair<String, String>, Double> averageRetailPriceOfComponentsByTechnologyAndCurrency;
	Map<Pair<String, String>, Double> deviationRetailPriceOfComponentsByTechnologyAndCurrency;
	Map<Pair<String, String>, Double> minRetailPriceOfComponentsByTechnologyAndCurrency;
	Map<Pair<String, String>, Double> maxRetailPriceOfComponentsByTechnologyAndCurrency;
	
	int	numberOfTools;
	Map<String, Double>	averageRetailPriceOfToolsByCurrency;
	Map<String, Double> deviationRetailPriceOfToolsByCurrency;
	Map<String, Double>	minRetailPriceOfToolsByCurrency;
	Map<String, Double>	maxRetailPriceOfToolsByCurrency;
	
	Map<Status, Integer> numberOfPatronagesByStatus;
	Map<Status, Double>	averageBudgetOfPatronagesByStatus;
	Map<Status, Double> deviationBudgetOfPatronagesByStatus;
	Map<Status, Double> minBudgetOfPatronagesByStatus;
	Map<Status, Double> maxBudgetOfPatronagesByStatus;
}
