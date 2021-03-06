package acme.features.patron.dashboard;

import java.util.Collection;

import javax.persistence.Tuple;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.patronages.Status;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface PatronDashboardRepository extends AbstractRepository {

	@Query("select count(p) from Patronage p where p.status = :status")
	Integer numberOfPatronagesByStatus(Status status);
  
    @Query("select p.budget.currency, avg(p.budget.amount) from Patronage p where p.status = :status group by p.budget.currency")
	Collection<Tuple> averageNumberOfBudgetsByCurrencyAndStatus(Status status);
	
	@Query("select p.budget.currency, stddev(p.budget.amount) from Patronage p where p.status = :status group by p.budget.currency")
	Collection<Tuple> deviationOfBudgetsByCurrencyAndStatus(Status status);
	
	@Query("select p.budget.currency, min(p.budget.amount) from Patronage p where p.status = :status group by p.budget.currency")
	Collection<Tuple> minBudgetByCurrencyAndStatus(Status status);
	
	@Query("select p.budget.currency, max(p.budget.amount) from Patronage p where p.status = :status group by p.budget.currency")
	Collection<Tuple> maxBudgetByCurrencyAndStatus(Status status);
}
