package com.github.dandelion.datatables.repository.jpa;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.github.dandelion.datatables.core.ajax.ColumnDef;
import com.github.dandelion.datatables.core.ajax.DatatablesCriterias;
import com.github.dandelion.datatables.model.Person;
import com.github.dandelion.datatables.repository.PersonRepository;

/**
 * <p>
 * JPA implementation of the {@link PersonRepository}.
 * 
 * @author Thibault Duchateau
 */
@Repository
public class PersonJpaRepository implements PersonRepository {

	@PersistenceContext
	private EntityManager entityManager;

	/**
	 * @return the complete list of persons.
	 */
	public List<Person> findAll() {
		TypedQuery<Person> query = entityManager.createQuery("SELECT p FROM Person p", Person.class);
		return query.getResultList();
	}

	/**
	 * @param maxResult
	 *            Max number of persons.
	 * @return a maxResult limited list of persons.
	 */
	public List<Person> findLimited(int maxResult) {
		TypedQuery<Person> query = entityManager.createQuery("SELECT p FROM Person p", Person.class);
		query.setMaxResults(maxResult);
		return query.getResultList();
	}

	/**
	 * <p>
	 * Query used to populate the DataTables that display the list of persons.
	 * 
	 * @param criterias
	 *            The DataTables criterias used to filter the persons.
	 *            (maxResult, filtering, paging, ...)
	 * @return a filtered list of persons.
	 */
	public List<Person> findPersonWithDatatablesCriterias(DatatablesCriterias criterias) {

		StringBuilder queryBuilder = new StringBuilder("SELECT p FROM Person p");

		/**
		 * Step 1: global and individual column filtering
		 */
		queryBuilder.append(PersonRepositoryUtils.getFilterQuery(criterias));

		/**
		 * Step 2: sorting
		 */
		if (criterias.hasOneSortedColumn()) {

			List<String> orderParams = new ArrayList<String>();
			queryBuilder.append(" ORDER BY ");
			for (ColumnDef columnDef : criterias.getSortingColumnDefs()) {
				orderParams.add("p." + columnDef.getName() + " " + columnDef.getSortDirection());
			}

			Iterator<String> itr2 = orderParams.iterator();
			while (itr2.hasNext()) {
				queryBuilder.append(itr2.next());
				if (itr2.hasNext()) {
					queryBuilder.append(" , ");
				}
			}
		}

		TypedQuery<Person> query = entityManager.createQuery(queryBuilder.toString(), Person.class);

		/**
		 * Step 3: paging
		 */
		query.setFirstResult(criterias.getStart());
		query.setMaxResults(criterias.getLength());

		return query.getResultList();
	}

	/**
	 * <p>
	 * Query used to return the number of filtered persons.
	 * 
	 * @param criterias
	 *            The DataTables criterias used to filter the persons.
	 *            (maxResult, filtering, paging, ...)
	 * @return the number of filtered persons.
	 */
	public Long getFilteredCount(DatatablesCriterias criterias) {

		StringBuilder queryBuilder = new StringBuilder("SELECT p FROM Person p");

		queryBuilder.append(PersonRepositoryUtils.getFilterQuery(criterias));

		Query query = entityManager.createQuery(queryBuilder.toString());
		return Long.parseLong(String.valueOf(query.getResultList().size()));
	}

	/**
	 * @return the total count of persons.
	 */
	public Long getTotalCount() {
		Query query = entityManager.createQuery("SELECT COUNT(p) FROM Person p");
		return (Long) query.getSingleResult();
	}
}