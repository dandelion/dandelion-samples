package com.github.dandelion.bootleaf;

import com.github.dandelion.core.web.DandelionFilter;
import com.github.dandelion.core.web.DandelionServlet;
import com.github.dandelion.thymeleaf.dialect.DandelionDialect;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.context.embedded.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import javax.servlet.Filter;

@Configuration
@EnableAutoConfiguration
@ComponentScan
public class Application {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}

	@Bean
	public DandelionDialect dandelionDialect() {
		return new DandelionDialect();
	}

	@Bean
	public Filter dandelionFilter() {
		return new DandelionFilter();
	}

	@Bean
	public ServletRegistrationBean dandelionServletRegistrationBean() {
		return new ServletRegistrationBean(new DandelionServlet(), "/dandelion-assets/*");
	}
}