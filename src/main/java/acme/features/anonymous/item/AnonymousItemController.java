package acme.features.anonymous.item;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import acme.entities.items.Item;
import acme.framework.controllers.AbstractController;
import acme.framework.roles.Anonymous;

@Controller
public class AnonymousItemController extends AbstractController<Anonymous, Item> {

	// Internal state ---------------------------------------------------------

	@Autowired
	protected AnonymousComponentListAllService		componentListAllService;

	@Autowired
	protected AnonymousItemShowService			showService;

	// Constructors -----------------------------------------------------------


	@PostConstruct
	protected void initialise() {
		super.addCommand("show", this.showService);
		super.addCommand("list-all-components", "list", this.componentListAllService);
	}

}