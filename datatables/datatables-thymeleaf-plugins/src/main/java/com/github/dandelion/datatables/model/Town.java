package com.github.dandelion.datatables.model;

/**
 * A typical Town entity.
 * 
 * @author tduchateau
 */
public class Town {

	private int id;
	private String name;
	private String postcode;

	public Town() {

	}

	public Town(int id, String name, String postcode){
		this.id = id;
		this.name = name;
		this.postcode = postcode;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
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