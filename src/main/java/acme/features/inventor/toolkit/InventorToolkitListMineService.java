package acme.features.inventor.toolkit;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.toolkits.Toolkit;
import acme.framework.components.models.Model;
import acme.framework.controllers.Request;
import acme.framework.entities.Principal;
import acme.framework.services.AbstractListService;
import acme.roles.Inventor;

@Service
public class InventorToolkitListMineService implements AbstractListService<Inventor, Toolkit> {
	
	// Internal state ---------------------------------------------------------
	
	@Autowired	
	protected InventorToolkitRepository repository;
	
	// AbstractListService<Employer, Job> interface ---------------------------


	@Override
	public boolean authorise(final Request<Toolkit> request) {
		assert request != null;

		return true;
	}

	@Override
	public Collection<Toolkit> findMany(final Request<Toolkit> request) {
		assert request != null;

		Collection<Toolkit> result;
		Principal principal;

		principal = request.getPrincipal();
		result = this.repository.findManyToolkitsByInventorId(principal.getActiveRoleId());

		return result;
	}

	@Override
	public void unbind(final Request<Toolkit> request, final Toolkit entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;
		
		request.unbind(entity, model,"code","title");
		
		String result = "";

		result = entity.isPublished() ? "The toolkit is published": "The toolkit is not published";
		
        model.setAttribute("published", result);
		
	}

}
