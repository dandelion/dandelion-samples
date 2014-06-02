datatables-thymeleaf-ajax
=================================================================

A sample which shows how to use an AJAX source with server-side processing based on Thymeleaf, Spring3 and JPA.

## Technology stack

 - Thymeleaf 2.1.3.RELEASE
 - Dandelion-Datatables 0.10.0
 - Jackson 1.9.13
 - Spring 3.2.9.RELEASE
 - Hibernate 4.3.5.Final / JPA 2.0
 - H2 database

## Features
		
 - __Data source type__: AJAX / AJAX + server-side processing
 - AJAX source
 - AJAX source + server-side processing
 - Pipelining data (with and without custom pipe size)
 - Custom rendering
 - Custom AJAX requests
 - Delayed filtering (min length)
 - Delayed filtering (time)
 - Filtering on click (multi-filter)
 - Filtering on click with an external form (multi-filter)
 - Data reloading (default & custom)

## Running this sample

Using __Apache Tomcat__:

    mvn tomcat7:run

Using __Jetty__:

    mvn jetty:run

You can then access the sample here: [http://localhost:9090/datatables-thymeleaf-ajax](http://localhost:9090/datatables-thymeleaf-ajax)

Note that you can also access the H2 web server here: [http://localhost:9091/](http://localhost:9091/). Just type `jdbc:h2:mem:dataSource` in the JDBC URL.

## Bug/improvement

Please report it using the issue tracker dedicated to all sample apps: [https://waffle.io/dandelion/dandelion-samples](https://waffle.io/dandelion/dandelion-samples)

=
The [Dandelion team](http://dandelion.github.io/team/).