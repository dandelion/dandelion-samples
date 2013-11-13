package com.github.dandelion.datatables.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.github.dandelion.datatables.dao.PersonFakeDao;
import com.github.dandelion.datatables.entity.Person;

/**
 * Implementation of the Person service.
 * 
 * @author tduchateau
 */
@Service
public class PersonServiceFakeImpl implements PersonService {

	public List<Person> findAll() {
		return PersonFakeDao.persons;
	}

	public List<Person> findLimited(int maxResult) {
		return PersonFakeDao.persons.subList(0, maxResult);
	}
}