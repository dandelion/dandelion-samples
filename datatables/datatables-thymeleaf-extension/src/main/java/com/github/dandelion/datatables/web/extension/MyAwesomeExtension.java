package com.github.dandelion.datatables.web.extension;

import com.github.dandelion.datatables.core.configuration.Scope;
import com.github.dandelion.datatables.core.constants.DTConstants;
import com.github.dandelion.datatables.core.extension.AbstractExtension;
import com.github.dandelion.datatables.core.extension.feature.PaginationType;
import com.github.dandelion.datatables.core.html.HtmlTable;

public class MyAwesomeExtension extends AbstractExtension {

	@Override
	public String getName() {
		return "myExtension";
	}

	@Override
	public void setup(HtmlTable table) {
		System.out.println("Ca passe bien ici");
		// Add a new CSS class to the table
		table.addCssClass("myClass");
		
		// Override the generated configuration
		addParameter(DTConstants.DT_DOM, "tp");
		
		// Activate the 'four_button' pagination type
		addScope(Scope.DDL_DT_PAGING_FOURBUTTON);
		addParameter(DTConstants.DT_PAGINATION_TYPE, PaginationType.FOUR_BUTTON.toString());
	}
}