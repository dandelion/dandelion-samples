package com.github.dandelion.datatables.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.dandelion.datatables.core.ajax.DataSet;
import com.github.dandelion.datatables.core.ajax.DatatablesCriterias;
import com.github.dandelion.datatables.model.Person;
import com.github.dandelion.datatables.repository.PersonRepository;

/**
 * <p>
 * Mostly used as a facade for all controllers.
 * 
 * @author tduchateau
 */
@Service
public class PersonServiceImpl implements PersonService {

	@Autowired
	private PersonRepository personRepository;

	/**
	 * {@inheritDoc}
	 */
	public List<Person> findAll() {
		return personRepository.findAll();
	}

	/**
	 * {@inheritDoc}
	 */
	public List<Person> findLimited(int maxResult) {
		return personRepository.findLimited(maxResult);
	}

	/**
	 * {@inheritDoc}
	 */
	public DataSet<Person> findPersonsWithDatatablesCriterias(DatatablesCriterias criterias) {

		List<Person> persons = personRepository.findPersonWithDatatablesCriterias(criterias);
		Long count = personRepository.getTotalCount();
		Long countFiltered = personRepository.getFilteredCount(criterias);

		return new DataSet<Person>(persons, count, countFiltered);
	}
}