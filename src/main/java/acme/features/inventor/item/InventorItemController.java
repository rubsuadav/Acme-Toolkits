package acme.features.inventor.item;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import acme.entities.items.Item;
import acme.framework.controllers.AbstractController;
import acme.roles.Inventor;

@Controller
public class InventorItemController extends AbstractController<Inventor, Item> {

	// Internal state ---------------------------------------------------------

	@Autowired
	protected InventorItemShowService			showService;

	@Autowired
	protected InventorItemCreateService		createService;

	@Autowired
	protected InventorItemUpdateService		updateService;

	@Autowired
	protected InventorItemDeleteService		deleteService;

	@Autowired
	protected InventorItemListMineService	itemListMineService;

	@Autowired
	protected InventorItemPublishService		publishService;

	// Constructors -----------------------------------------------------------


	@PostConstruct
	protected void initialise() {
		super.addCommand("show", this.showService);
		super.addCommand("create", this.createService);
		super.addCommand("update", this.updateService);
		super.addCommand("delete", this.deleteService);

		super.addCommand("list-mine-items", "list", this.itemListMineService);

		super.addCommand("publish", "update", this.publishService);
	}

}
