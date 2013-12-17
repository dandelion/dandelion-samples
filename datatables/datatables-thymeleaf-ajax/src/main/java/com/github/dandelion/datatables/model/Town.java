package com.github.dandelion.datatables.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * A typical Town entity.
 * 
 * @author tduchateau
 */
@Entity
public class Town {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column
	private String name;

	@Column
	private String postcode;

	public Town() {

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Town(String label) {
		this.name = label;
	}

	public String getName() {
		return name;
	}

	public void setName(String label) {
		this.name = label;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
}