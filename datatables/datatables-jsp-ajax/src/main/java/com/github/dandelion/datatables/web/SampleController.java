package com.github.dandelion.datatables.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

	@RequestMapping(value = "/")
	public String goToIndex(HttpServletRequest request) {
		return "index";
	}
	
	@RequestMapping(value = "/ajax/{page}")
	public String goToAjaxExample(@PathVariable String page) {
		return "ajax." + page;
	}

	@RequestMapping(value = "/server-side/{page}")
	public String goToServerSideExample(@PathVariable String page) {
		return "server-side." + page;
	}
	
	@RequestMapping(value = "/filtering/{page}")
	public String goToFilteringExample(@PathVariable String page) {
		return "filtering." + page;
	}
}