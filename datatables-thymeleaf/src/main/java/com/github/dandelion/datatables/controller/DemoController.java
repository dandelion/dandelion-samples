package com.github.dandelion.datatables.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.dandelion.datatables.entity.Person;
import com.github.dandelion.datatables.service.PersonService;

/**
 * Controllers for the all demo examples.
 * 
 * @author Thibault Duchateau
 */
@Controller
@RequestMapping(method = RequestMethod.GET)
public class DemoController {

	@Autowired
	private PersonService personService;

	/**
	 * <p>
	 * This model attribute populates all the tables that use client-side
	 * processing, i.e. all DOM examples and also AJAX source.
	 * 
	 * @return the entire set of persons.
	 */
	@ModelAttribute("persons")
	public List<Person> populateTable() {
		return personService.findLimited(200);
	}

	@ModelAttribute("testAttr")
	public String populateTest() {
		return "ceciestuntest";
	}
	
	@RequestMapping(value = "/basic/{page}")
	public String goToBasicExample(@PathVariable String page) {
		return "basic/" + page;
	}

	@RequestMapping(value = "/advanced/{page}")
	public String goToAdvancedExample(@PathVariable String page) {
		return "advanced/" + page;
	}

	@RequestMapping(value = "/ajax/{page}")
	public String goToAjaxExample(@PathVariable String page) {
		return "ajax/" + page;
	}

	@RequestMapping(value = "/features/{page}")
	public String goToFeatureExample(@PathVariable String page) {
		return "features/" + page;
	}

	@RequestMapping(value = "/themes/{page}")
	public String goToThemeExample(@PathVariable String page) {
		return "themes/" + page;
	}

	@RequestMapping(value = "/plugins/{page}")
	public String goToPluginExample(@PathVariable String page) {
		return "plugins/" + page;
	}

}