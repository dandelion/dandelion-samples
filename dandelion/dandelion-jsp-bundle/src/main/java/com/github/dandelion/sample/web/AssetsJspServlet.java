package com.github.dandelion.sample.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.github.dandelion.core.asset.web.AssetRequestContext;

public class AssetsJspServlet extends HttpServlet {

	private static final long serialVersionUID = -6725573591773344198L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Add to assets request context the scope1 and scope2
		AssetRequestContext.get(request).addBundles("scope1,scope2").addBundles("delegateContentIP");

		// go to the jsp
		getServletContext().getRequestDispatcher("/WEB-INF/pages/assets.jsp").forward(request, response);
	}
}