package com.github.dandelion.datatables.struts1.common.form;

import org.apache.struts.action.ActionForm;

public class HelloWorldForm extends ActionForm {

	String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}