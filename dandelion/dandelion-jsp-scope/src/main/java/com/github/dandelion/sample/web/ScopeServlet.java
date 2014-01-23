package com.github.dandelion.sample.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.github.dandelion.core.asset.Asset;
import com.github.dandelion.core.asset.AssetStack;
import com.github.dandelion.core.asset.web.AssetRequestContext;

public class ScopeServlet extends HttpServlet {

	private static final long serialVersionUID = -6725573591773344198L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String[] loadedScopes = AssetRequestContext.get(request).getScopes(true);
		List<Asset> loadedAssets = AssetStack.assetsFor(loadedScopes);

		request.setAttribute("loadedScopes", loadedScopes);
		request.setAttribute("loadedAssets", loadedAssets);

		getServletContext().getRequestDispatcher("/WEB-INF/views/scope.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		String newScope = String.valueOf(request.getParameter("newScope"));
		AssetRequestContext.get(request).addScope(newScope);
		doGet(request, response);
	}
}