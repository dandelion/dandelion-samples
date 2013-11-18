package com.github.dandelion.datatables.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.dandelion.datatables.model.Person;
import com.github.dandelion.datatables.service.PersonService;

/**
 * <p>
 * Controller for all examples contained in the sample.
 * 
 * @author Thibault Duchateau
 */
@Controller
@RequestMapping(method = RequestMethod.GET)
public class SampleController {

	@Autowired
	private PersonService personService;

	/**
	 * <p>
	 * Populates the model with the domain objects. Used in all examples that
	 * use a DOM source.
	 * 
	 * @return a list of persons for display.
	 */
	@ModelAttribute("persons")
	public List<Person> populateTable() {
		return personService.findLimited(100);
	}

	@RequestMapping(value = "/bootstrap2/{page}")
	public String goToBootstrap2Example(@PathVariable String page) {
		return "bootstrap2." + page;
	}
	
	@RequestMapping(value = "/bootstrap3/{page}")
	public String goToBootstrap3Example(@PathVariable String page) {
		return "bootstrap3." + page;
	}
	
	@RequestMapping(value = "/jqueryui/{page}")
	public String goToBasicJqueryuiExample(@PathVariable String page) {
		return "jqueryui." + page;
	}
}