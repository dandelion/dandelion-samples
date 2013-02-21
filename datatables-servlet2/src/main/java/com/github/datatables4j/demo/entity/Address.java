package com.github.datatables4j.demo.entity;

/**
 * A typical Address entity.
 * 
 * @author Thibault Duchateau
 */
public class Address {

	private String street1;
	private String street2;
	private Town town;

	public Address(String street1, Town town) {
		this.street1 = street1;
		this.town = town;
	}

	/**
	 * @return the town
	 */
	public Town getTown() {
		return town;
	}

	/**
	 * @param town
	 *            the town to set
	 */
	public void setTown(Town town) {
		this.town = town;
	}

	/**
	 * @return the street2
	 */
	public String getStreet2() {
		return street2;
	}

	/**
	 * @param street2
	 *            the street2 to set
	 */
	public void setStreet2(String street2) {
		this.street2 = street2;
	}

	/**
	 * @return the street1
	 */
	public String getStreet1() {
		return street1;
	}

	/**
	 * @param street1
	 *            the street1 to set
	 */
	public void setStreet1(String street1) {
		this.street1 = street1;
	}
}