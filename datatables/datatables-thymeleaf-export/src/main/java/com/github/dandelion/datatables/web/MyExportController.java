package com.github.dandelion.datatables.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.dandelion.datatables.core.ajax.DatatablesCriterias;
import com.github.dandelion.datatables.core.export.ExportConf;
import com.github.dandelion.datatables.core.export.ExportUtils;
import com.github.dandelion.datatables.core.export.HtmlTableBuilder;
import com.github.dandelion.datatables.core.html.HtmlTable;
import com.github.dandelion.datatables.extras.spring3.ajax.DatatablesParams;
import com.github.dandelion.datatables.model.Person;
import com.github.dandelion.datatables.service.PersonService;
import com.github.dandelion.datatables.web.views.MyCustomExportClass;

/**
 * Controller used to handle custom export.
 *
 * @author Thibault Duchateau
 */
@Controller
@RequestMapping(value = "/myExport")
public class MyExportController {
	
	@Autowired
	private PersonService personService;
	
	@RequestMapping
	public void export(@DatatablesParams DatatablesCriterias criterias, HttpServletRequest request, HttpServletResponse response) {

		// Get data to export
		List<Person> persons = personService.findPersonsWithDatatablesCriterias(criterias).getRows();
		
		// Build the export configuration
		// The custom format "myFormat" is just a wrapper around pdf
		ExportConf myExportConf = new ExportConf.Builder("myFormat")
				.header(true)
				.exportClass(new MyCustomExportClass())
				.mimeType("application/pdf")
				.fileExtension("pdf")
				.build();

		// Build the table to export from the data and the export configuration
		HtmlTable table = new HtmlTableBuilder<Person>().newBuilder("tableId", persons, request, myExportConf)
				.column().fillWithProperty("id").title("Id")
				.column().fillWithProperty("firstName").title("Firtname")
				.column().fillWithProperty("lastName").title("Lastname")
				.column().fillWithProperty("address.town.name").title("City")
				.column().fillWithProperty("mail").title("Mail")
				.column().fillWithProperty("birthDate", "{0,date,yyyy-mm-DD}").title("BirthDate")
				.build();

		// Render the export in the browser
		ExportUtils.renderExport(table, myExportConf, response);
	}
}