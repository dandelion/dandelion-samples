package com.github.dandelion.datatables.web.ajax;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.dandelion.datatables.core.ajax.DataSet;
import com.github.dandelion.datatables.core.ajax.DatatablesCriterias;
import com.github.dandelion.datatables.core.ajax.DatatablesResponse;
import com.github.dandelion.datatables.extras.spring3.ajax.DatatablesParams;
import com.github.dandelion.datatables.model.Person;
import com.github.dandelion.datatables.service.PersonService;

/**
 * <p>
 * Spring MVC controller that exposes Web Services consumed by DataTables.
 * <p>
 * Given that Datatables only consumes JSON for now, it is crucial that Jackson
 * is in the webapp classpath for the POJO convertion in JSON format.
 * 
 * @author Thibault Duchateau
 */
@Controller
@RequestMapping(method = RequestMethod.GET)
public class AjaxController {

	@Autowired
	private PersonService personService;

	@RequestMapping(value = "/persons-no-server-side")
	public @ResponseBody
	List<Person> findAll() {
		return personService.findLimited(200);
	}

	@RequestMapping(value = "/persons-no-spring")
	public @ResponseBody
	DatatablesResponse<Person> findAllForDataTables(HttpServletRequest request) {
		DatatablesCriterias criterias = DatatablesCriterias.getFromRequest(request);
		DataSet<Person> persons = personService.findPersonsWithDatatablesCriterias(criterias);
		return DatatablesResponse.build(persons, criterias);
	}

	@RequestMapping(value = "/persons")
	public @ResponseBody
	DatatablesResponse<Person> findAllForDataTablesFullSpring(@DatatablesParams DatatablesCriterias criterias) {
		DataSet<Person> dataSet = personService.findPersonsWithDatatablesCriterias(criterias);
		return DatatablesResponse.build(dataSet, criterias);
	}
	
	@RequestMapping(value = "/emptyList")
	public @ResponseBody
	List<Person> emptyList(HttpServletRequest request) {
		return new ArrayList<Person>();
	}
	
	@RequestMapping(value = "/nullList")
	public @ResponseBody
	List<Person> nullList(HttpServletRequest request) {
		return null;
	}
}