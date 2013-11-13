package com.github.dandelion.datatables.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.github.dandelion.datatables.entity.Person;

/**
 * Service that manages the persons.
 * 
 * @author tduchateau
 */
@Service
public interface PersonService {

	/**
	 * @return the complete list of persons.
	 */
	public List<Person> findAll();

	/**
	 * @param maxResult
	 *            Max number of persons.
	 * @return a maxResult limited list of persons.
	 */
	public List<Person> findLimited(int maxResult);
}