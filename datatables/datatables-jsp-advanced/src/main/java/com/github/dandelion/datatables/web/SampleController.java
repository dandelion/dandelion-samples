package com.github.dandelion.datatables.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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

	@RequestMapping(value = "/")
	public String goToIndex(HttpServletRequest request) {
		return "index";
	}
	
	@RequestMapping(value = "/table-decoration/{page}")
	public String goToTableDecorationExample(@PathVariable String page) {
		return "table-decoration." + page;
	}
	
	@RequestMapping(value = "/dom-positioning")
	public String goToDomPositioningExample() {
		return "dom-positioning";
	}
	
	@RequestMapping(value = "/row-id")
	public String goToRowIdExample() {
		return "row-id";
	}
	
	@RequestMapping(value = "/callbacks")
	public String goToCallbackExample() {
		return "callbacks";
	}
	
	@RequestMapping(value = "/dynamic-attributes")
	public String goToDynamicAttributesExample() {
		return "dynamic-attributes";
	}
	
	@RequestMapping(value = "/overriding-configuration")
	public String goTooverridingConfigurationExample() {
		return "overriding-configuration";
	}
	
	@RequestMapping(value = "/extra/{page}")
	public String goExtraFileExample(@PathVariable String page) {
		return "extra." + page;
	}
}