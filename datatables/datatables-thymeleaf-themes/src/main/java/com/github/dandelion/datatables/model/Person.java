package com.github.dandelion.datatables.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * A typical Person entity.
 * 
 * @author tduchateau
 */
public class Person {

	private int id;
	private String firstName;
	private String lastName;
	private String mail;
	private Date birthDate;
	private String salary;
	private Company company;
	private Address address;

	public Person() {

	}

	public Person(int id, String firstName, String lastName, String mail, Address address) {
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.mail = mail;
		this.address = address;
	}
	
	public Person(int id, String firstName, String lastName, String mail) {
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.mail = mail;
	}

		public Person(int id, String firstName, String lastName, String mail, String birthDate, String salary, String companyName, String street, String townName, String townPostcode) throws ParseException{
		
		Company company = new Company();
		company.setName(companyName);
		Town town = new Town();
		town.setName(townName);
		town.setPostcode(townPostcode);
		Address address = new Address(street);
		address.setTown(town);
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.mail = mail;
		this.birthDate = new SimpleDateFormat("yyyy-MM-dd").parse(birthDate);
		this.salary = salary;
		this.company = company;
		this.address = address;
	}

	public Person(int id, String firstName, String lastName, String mail, String birthDate, String salary, int companyId, String companyName, int addressId, String street, int townId, String townName, String townPostcode) throws ParseException{
		
		Company company = new Company(companyId, companyName);
		Town town = new Town(townId, townName, townPostcode);
		Address address = new Address(street);
		address.setId(addressId);
		address.setTown(town);
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.mail = mail;
		this.birthDate = new SimpleDateFormat("YYYY-mm-dd").parse(birthDate);
		this.salary = salary;
		this.company = company;
		this.address = address;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	@Override
	public String toString() {
		return "Person [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", mail=" + mail + ", address=" + address + "]";
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}
}