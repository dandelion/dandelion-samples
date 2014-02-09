package com.github.dandelion.datatables.service;

import java.util.List;

import com.github.dandelion.datatables.model.Person;

/**
 * <p>
 * Person service mostly used as a facade for all controllers.
 * 
 * @author Thibault Duchateau
 */
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