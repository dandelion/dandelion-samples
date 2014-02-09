package com.github.dandelion.datatables.repository;

import java.util.List;

import com.github.dandelion.datatables.model.Person;

/**
 * Repository interface for the <code>Person</code> domain object.
 * 
 * @author Thibault Duchateau
 */
public interface PersonRepository {

	/**
	 * @return the complete list of persons stored in the repository.
	 */
	public List<Person> findAll();

	/**
	 * @param maxResult
	 *            Max number of persons.
	 * @return a limited list of persons.
	 */
	public List<Person> findLimited(int maxResult);
}
