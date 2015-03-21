package com.github.dandelion.datatables.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.dandelion.datatables.core.ajax.DatatablesCriterias;
import com.github.dandelion.datatables.core.export.CsvExport;
import com.github.dandelion.datatables.core.export.ExportConf;
import com.github.dandelion.datatables.core.export.ExportUtils;
import com.github.dandelion.datatables.core.export.HtmlTableBuilder;
import com.github.dandelion.datatables.core.export.XmlExport;
import com.github.dandelion.datatables.core.html.HtmlTable;
import com.github.dandelion.datatables.extras.export.itext.PdfExport;
import com.github.dandelion.datatables.extras.export.poi.XlsExport;
import com.github.dandelion.datatables.extras.spring3.ajax.DatatablesParams;
import com.github.dandelion.datatables.model.Person;
import com.github.dandelion.datatables.service.PersonService;

/**
 * Controller used to manage all table export.
 * 
 * @author Thibault Duchateau
 */
@Controller
public class ExportController {

	@Autowired
	private PersonService personService;

	@RequestMapping(value = "/export", produces = "text/csv")
	public void csv(@DatatablesParams DatatablesCriterias criterias, HttpServletRequest request,
			HttpServletResponse response) {

		// Get data to export
		List<Person> persons = personService.findPersonsWithDatatablesCriterias(criterias).getRows();

		// Build the export configuration
		// The custom format "myFormat" is just a wrapper around pdf
		ExportConf exportCsvConf = new ExportConf.Builder("csv").header(true).exportClass(new CsvExport()).build();

		// Build the table to export from the data and the export configuration
		HtmlTable table = new HtmlTableBuilder<Person>().newBuilder("tableId", persons, request, exportCsvConf)
				.column().fillWithProperty("id").title("Id").column().fillWithProperty("firstName").title("Firtname")
				.column().fillWithProperty("lastName").title("Lastname").column().fillWithProperty("address.town.name")
				.title("City").column().fillWithProperty("mail").title("Mail").column()
				.fillWithProperty("birthDate", "{0,date,dd-MM-yyyy}").title("BirthDate").build();

		// Render the export in the browser
		ExportUtils.renderExport(table, exportCsvConf, response);
	}

	@RequestMapping(value = "/export", produces = "application/xml")
	public void xml(@DatatablesParams DatatablesCriterias criterias, HttpServletRequest request,
			HttpServletResponse response) {

		List<Person> persons = personService.findPersonsWithDatatablesCriterias(criterias).getRows();

		ExportConf exportXmlConf = new ExportConf.Builder("xml").exportClass(new XmlExport()).build();

		HtmlTable table = new HtmlTableBuilder<Person>().newBuilder("tableId", persons, request, exportXmlConf)
				.column().fillWithProperty("id").title("Id").column().fillWithProperty("firstName").title("Firtname")
				.column().fillWithProperty("lastName").title("Lastname").column().fillWithProperty("address.town.name")
				.title("City").column().fillWithProperty("mail").title("Mail").column()
				.fillWithProperty("birthDate", "{0,date,dd-MM-yyyy}").title("BirthDate").build();

		ExportUtils.renderExport(table, exportXmlConf, response);
	}

	@RequestMapping(value = "/export", produces = "application/pdf")
	public void pdf(@DatatablesParams DatatablesCriterias criterias, HttpServletRequest request,
			HttpServletResponse response) {

		List<Person> persons = personService.findPersonsWithDatatablesCriterias(criterias).getRows();

		ExportConf exportPdfConf = new ExportConf.Builder("pdf").header(true).exportClass(new PdfExport()).build();

		HtmlTable table = new HtmlTableBuilder<Person>().newBuilder("tableId", persons, request).column()
				.fillWithProperty("id").title("Id").column().fillWithProperty("firstName").title("Firtname").column()
				.fillWithProperty("lastName").title("Lastname").column().fillWithProperty("address.town.name")
				.title("City").column().fillWithProperty("mail").title("Mail").column()
				.fillWithProperty("birthDate", "{0,date,dd-MM-yyyy}").title("BirthDate").build();

		ExportUtils.renderExport(table, exportPdfConf, response);
	}

	@RequestMapping(value = "/export", produces = "application/vnd.ms-excel")
	public void xls(@DatatablesParams DatatablesCriterias criterias, HttpServletRequest request,
			HttpServletResponse response) {

		List<Person> persons = personService.findPersonsWithDatatablesCriterias(criterias).getRows();

		ExportConf exportXlsConf = new ExportConf.Builder("xls").header(true).exportClass(new XlsExport()).build();

		HtmlTable table = new HtmlTableBuilder<Person>().newBuilder("tableId", persons, request, exportXlsConf)
				.column().fillWithProperty("id").title("Id").column().fillWithProperty("firstName").title("Firtname")
				.column().fillWithProperty("lastName").title("Lastname").column().fillWithProperty("address.town.name")
				.title("City").column().fillWithProperty("mail").title("Mail").column()
				.fillWithProperty("birthDate", "{0,date,dd-MM-yyyy}").title("BirthDate").build();

		ExportUtils.renderExport(table, exportXlsConf, response);
	}

	@RequestMapping(value = "/export-custom-content")
	public void pdfWithCustomContent(@DatatablesParams DatatablesCriterias criterias, HttpServletRequest request,
			HttpServletResponse response) {

		List<Person> persons = personService.findPersonsWithDatatablesCriterias(criterias).getRows();

		ExportConf exportPdfConf = new ExportConf.Builder("pdf").header(true).exportClass(new PdfExport()).build();

		HtmlTable table = new HtmlTableBuilder<Person>().newBuilder("tableId", persons, request).column()
				.fillWithProperty("id").title("Id").column().fillWith("This is the firstName! =>")
				.andProperty("firstName").title("Firtname").column().fillWithProperty("lastName")
				.and(" <= And this was the lastName!").title("Lastname").column().fillWithProperty("address.town.name")
				.title("City").column().fillWithProperty("mail").title("Mail").column()
				.fillWithProperty("birthDate", "{0,date,dd-MM-yyyy}").title("BirthDate").build();

		ExportUtils.renderExport(table, exportPdfConf, response);
	}
}