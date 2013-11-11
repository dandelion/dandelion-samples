package com.github.dandelion.datatables.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.dandelion.datatables.core.ajax.DatatablesCriterias;
import com.github.dandelion.datatables.core.exception.ExportException;
import com.github.dandelion.datatables.core.export.CsvExport;
import com.github.dandelion.datatables.core.export.ExportConf;
import com.github.dandelion.datatables.core.export.ExportType;
import com.github.dandelion.datatables.core.export.ExportUtils;
import com.github.dandelion.datatables.core.export.HtmlTableBuilder;
import com.github.dandelion.datatables.core.export.XmlExport;
import com.github.dandelion.datatables.core.html.HtmlTable;
import com.github.dandelion.datatables.entity.Person;
import com.github.dandelion.datatables.extras.export.itext.PdfExport;
import com.github.dandelion.datatables.extras.export.poi.XlsExport;
import com.github.dandelion.datatables.extras.spring3.ajax.DatatablesParams;
import com.github.dandelion.datatables.service.PersonService;

/**
 * Controller used to manage all table export.
 *
 * @author Thibault Duchateau
 */
@Controller
@RequestMapping(value = "/export")
public class ExportController {
	
	@Autowired
	private PersonService personService;
	
	@RequestMapping(produces = "text/csv")
	public void csv(@DatatablesParams DatatablesCriterias criterias, HttpServletRequest request, HttpServletResponse response) throws ExportException, IOException {
		
		List<Person> persons = personService.findPersonsWithDatatablesCriterias(criterias).getRows();
		
		ExportConf exportCsvConf = new ExportConf.Builder(ExportType.CSV)
				.header(true)
				.exportClass(new CsvExport())
				.build();

		HtmlTable table = new HtmlTableBuilder<Person>().newBuilder("tableId", persons, request)
				.column().fillWithProperty("id").title("Id")
				.column().fillWithProperty("firstName").title("Firtname")
				.column().fillWithProperty("lastName").title("Lastname")
				.column().fillWithProperty("address.town.name").title("City")
				.column().fillWithProperty("mail").title("Mail")
				.configureExport(exportCsvConf)
				.build();

		ExportUtils.renderExport(table, exportCsvConf, response);
	}
	
	@RequestMapping(produces = "application/xml")
	public void xml(@DatatablesParams DatatablesCriterias criterias, HttpServletRequest request, HttpServletResponse response) throws ExportException, IOException {
		
		List<Person> persons = personService.findPersonsWithDatatablesCriterias(criterias).getRows();
		
		ExportConf exportXmlConf = new ExportConf.Builder(ExportType.XML)
				.exportClass(new XmlExport())
				.build();
		
		HtmlTable table = new HtmlTableBuilder<Person>().newBuilder("tableId", persons, request)
				.column().fillWithProperty("id").title("Id")
				.column().fillWithProperty("firstName").title("Firtname")
				.column().fillWithProperty("lastName").title("Lastname")
				.column().fillWithProperty("address.town.name").title("City")
				.column().fillWithProperty("mail").title("Mail")
				.configureExport(exportXmlConf)
				.build();
		
		ExportUtils.renderExport(table, exportXmlConf, response);
	}
	
	@RequestMapping(produces = "application/pdf")
	public void pdf(@DatatablesParams DatatablesCriterias criterias, HttpServletRequest request, HttpServletResponse response) throws ExportException, IOException {
		
		List<Person> persons = personService.findPersonsWithDatatablesCriterias(criterias).getRows();
		
		ExportConf exportPdfConf = new ExportConf.Builder(ExportType.PDF)
				.header(true)
				.exportClass(new PdfExport())
				.build();
		
		HtmlTable table = new HtmlTableBuilder<Person>().newBuilder("tableId", persons, request)
				.column().fillWithProperty("id").title("Id")
				.column().fillWithProperty("firstName").title("Firtname")
				.column().fillWithProperty("lastName").title("Lastname")
				.column().fillWithProperty("address.town.name").title("City")
				.column().fillWithProperty("mail").title("Mail")
				.configureExport(exportPdfConf)
				.build();
		
		ExportUtils.renderExport(table, exportPdfConf, response);
	}
	
	@RequestMapping(produces = "application/vnd.ms-excel")
	public void xls(@DatatablesParams DatatablesCriterias criterias, HttpServletRequest request, HttpServletResponse response) throws ExportException, IOException {
		
		List<Person> persons = personService.findPersonsWithDatatablesCriterias(criterias).getRows();
		
		ExportConf exportXlsConf = new ExportConf.Builder(ExportType.XLS)
			.header(true)
			.exportClass(new XlsExport())
			.build();
		
		HtmlTable table = new HtmlTableBuilder<Person>().newBuilder("tableId", persons, request)
				.column().fillWithProperty("id").title("Id")
				.column().fillWithProperty("firstName").title("Firtname")
				.column().fillWithProperty("lastName").title("Lastname")
				.column().fillWithProperty("address.town.name").title("City")
				.column().fillWithProperty("mail").title("Mail")
				.configureExport(exportXlsConf)
				.build();
		
		ExportUtils.renderExport(table, exportXlsConf, response);
	}
}