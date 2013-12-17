package com.github.dandelion.datatables.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.dandelion.datatables.core.ajax.DataSet;
import com.github.dandelion.datatables.core.ajax.DatatablesCriterias;
import com.github.dandelion.datatables.model.Person;
import com.github.dandelion.datatables.repository.PersonRepository;

/**
 * Implementation of the Person service.
 * 
 * @author tduchateau
 */
@Service
public class PersonServiceJpaImpl implements PersonService {

	@Autowired
	private PersonRepository personDao;

	/**
	 * {@inheritDoc}
	 */
	public List<Person> findAll() {
		return personDao.findAll();
	}

	/**
	 * {@inheritDoc}
	 */
	public List<Person> findLimited(int maxResult) {
		return personDao.findLimited(maxResult);
	}

	/**
	 * {@inheritDoc}
	 */
	public DataSet<Person> findPersonsWithDatatablesCriterias(DatatablesCriterias criterias) {

		List<Person> persons = personDao.findPersonWithDatatablesCriterias(criterias);
		Long count = personDao.getTotalCount();
		Long countFiltered = personDao.getFilteredCount(criterias);

		return new DataSet<Person>(persons, count, countFiltered);
	}
}