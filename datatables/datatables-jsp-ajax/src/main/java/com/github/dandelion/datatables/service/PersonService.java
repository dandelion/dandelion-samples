package com.github.dandelion.datatables.service;

import java.util.List;

import com.github.dandelion.datatables.core.ajax.DataSet;
import com.github.dandelion.datatables.core.ajax.DatatablesCriterias;
import com.github.dandelion.datatables.model.Person;

/**
 * Service that manages the persons.
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

	/**
	 * <p>
	 * Query used to populate the DataTables that display the list of persons.
	 * 
	 * @param criterias
	 *            The DataTables criterias used to filter the persons.
	 *            (maxResult, filtering, paging, ...)
	 * @return a bean that wraps all the needed information by DataTables to
	 *         redraw the table with the data.
	 */
	public DataSet<Person> findPersonsWithDatatablesCriterias(DatatablesCriterias criterias);
}