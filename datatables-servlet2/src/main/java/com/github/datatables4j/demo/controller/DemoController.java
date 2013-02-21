package com.github.datatables4j.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.datatables4j.demo.entity.Person;
import com.github.datatables4j.demo.service.PersonService;

/**
 * Controller for the basic examples management.
 * 
 * @author Thibault Duchateau
 */
@Controller
@RequestMapping(value = "/demo", method = RequestMethod.GET)
public class DemoController {
	
	@Autowired
	private PersonService personCoordinator;
	
	@ModelAttribute("persons")
	public List<Person> populateTable(){
		return personCoordinator.get100();
	}
	
	@RequestMapping(value="/basic")
	public String goBasic() {
		return "basic";
	}
	
	@RequestMapping(value="/export")
	public String goExport() {
		return "export";
	}
}