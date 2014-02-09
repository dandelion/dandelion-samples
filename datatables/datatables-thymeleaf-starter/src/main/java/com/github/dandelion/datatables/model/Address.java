package com.github.dandelion.datatables.model;


/**
 * A typical Address entity.
 * 
 * @author tduchateau
 */
public class Address {

	private int id;
	private String street;
	private Town town;

	public Address() {

	}

	public Address(String street) {
		this.street = street;
	}

	public Address(String street, Town town) {
		this.street = street;
		this.town = town;
	}

	public Town getTown() {
		return town;
	}

	public void setTown(Town town) {
		this.town = town;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	

}