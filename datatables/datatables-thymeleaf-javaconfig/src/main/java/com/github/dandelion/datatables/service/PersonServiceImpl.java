package com.github.dandelion.datatables.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.dandelion.datatables.model.Person;
import com.github.dandelion.datatables.repository.PersonRepository;

/**
 * Implementation of the {@link PersonService}.
 * 
 * @author Thibault Duchateau
 */
@Service
public class PersonServiceImpl implements PersonService {

	@Autowired
	PersonRepository personRepository;
	
	public List<Person> findAll() {
		return personRepository.findAll();
	}

	public List<Person> findLimited(int maxResult) {
		return personRepository.findLimited(maxResult);
	}
}