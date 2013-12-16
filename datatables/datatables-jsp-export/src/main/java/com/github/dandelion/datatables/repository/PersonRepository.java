package com.github.dandelion.datatables.repository;

import java.util.List;

import com.github.dandelion.datatables.core.ajax.DatatablesCriterias;
import com.github.dandelion.datatables.model.Person;

/**
 * Repository interface for the <code>Person</code> domain object.
 * 
 * @author Thibault Duchateau
 */
public interface PersonRepository {

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
	 * @return a filtered list of persons.
	 */
	public List<Person> findPersonWithDatatablesCriterias(DatatablesCriterias criterias);

	/**
	 * <p>
	 * Query used to return the number of filtered persons.
	 * 
	 * @param criterias
	 *            The DataTables criterias used to filter the persons.
	 *            (maxResult, filtering, paging, ...)
	 * @return the number of filtered persons.
	 */
	public Long getFilteredCount(DatatablesCriterias criterias);

	/**
	 * @return the total count of persons.
	 */
	public Long getTotalCount();
}
