package com.github.dandelion.datatables.model;


public class Company {

	private int id;
	private String name;

	public Company(){
		
	}
	public Company(int id, String name){
		this.id = id;
		this.name = name;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}