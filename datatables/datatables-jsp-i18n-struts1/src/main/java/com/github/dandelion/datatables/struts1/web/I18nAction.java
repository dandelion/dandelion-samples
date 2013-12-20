package com.github.dandelion.datatables.struts1.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.github.dandelion.datatables.struts1.mock.Mock;

public class I18nAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		request.setAttribute("persons", Mock.persons);
		
		return mapping.findForward("success");
	}
}
