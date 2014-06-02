package com.github.dandelion.datatables.config;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import com.github.dandelion.core.web.DandelionFilter;
import com.github.dandelion.core.web.DandelionServlet;

public class ApplicationInitializer implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {

		// Register the Root application context
		AnnotationConfigWebApplicationContext rootContext = new AnnotationConfigWebApplicationContext();
		rootContext.register(RootConfig.class);

		// Register the Web application context
		AnnotationConfigWebApplicationContext mvcContext = new AnnotationConfigWebApplicationContext();
		mvcContext.register(WebConfig.class);

		// Context loader listener
		servletContext.addListener(new ContextLoaderListener(rootContext));

		// Register the Dandelion filter
		FilterRegistration.Dynamic dandelionFilter = servletContext.addFilter("dandelionFilter", new DandelionFilter());
		dandelionFilter.addMappingForUrlPatterns(null, false, "/*");

		// Register the Spring dispatcher servlet
		ServletRegistration.Dynamic dispatcher = servletContext.addServlet("springServlet", new DispatcherServlet(
				mvcContext));
		dispatcher.setLoadOnStartup(1);
		dispatcher.addMapping("/");

		// Register the Dandelion servlet
		ServletRegistration.Dynamic dandelionServlet = servletContext.addServlet("dandelionServlet",
				new DandelionServlet());
		dandelionServlet.setLoadOnStartup(2);
		dandelionServlet.addMapping("/dandelion-assets/*");
	}
}
