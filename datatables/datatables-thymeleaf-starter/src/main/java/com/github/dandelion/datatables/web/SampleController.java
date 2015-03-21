package com.github.dandelion.datatables.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping(value = "/basics/sorting/{page}")
	public String goToSortingExample(@PathVariable String page) {
		return "basics/sorting/" + page;
	}
	
	@RequestMapping(value = "/advanced/{page}")
	public String goToAdvancedExample(@PathVariable String page) {
		return "advanced/" + page;
	}
	
	@RequestMapping(value = "/basics/filtering/{page}")
	public String goToFilteringExample(@PathVariable String page) {
		return "basics/filtering/" + page;
	}
	
	@RequestMapping(value = "/basics/paging/{page}")
	public String goToPagingExample(@PathVariable String page) {
		return "basics/paging/" + page;
	}
	
	@RequestMapping(value = "/basics/scrolling/{page}")
	public String goToScrollingExample(@PathVariable String page) {
		return "basics/scrolling/" + page;
	}

	@RequestMapping(value = "/basics/{page}")
	public String goToBasicsExample(@PathVariable String page) {
		return "basics/" + page;
	}
	
	@RequestMapping(value = "/column-rendering/{page}")
	public String goToColumnRenderingExample(@PathVariable String page) {
		return "column-rendering/" + page;
	}
	
	@RequestMapping(value = "/multiple-tables")
	public String goToMultipleTablesExample() {
		return "multiple-tables";
	}
	
	@RequestMapping(value = "/dom-positioning")
	public String goToDomPositioningExample() {
		return "dom-positioning";
	}
	
	@RequestMapping(value = "/styling/{page}")
	public String goToStylingExample(@PathVariable String page) {
		return "styling/" + page;
	}
	
	@RequestMapping(value = "/ajaxtest", method = RequestMethod.GET)
	public String showGuestList(Model model) {
	    model.addAttribute("persons", personService.findLimited(100));
	    
	    return "fragments/frag :: resultsList";
	}
}