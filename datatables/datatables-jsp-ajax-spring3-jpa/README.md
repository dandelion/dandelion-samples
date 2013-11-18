datatables-jsp-ajax-spring3-jpa
=================================================================

A sample which shows how to use an AJAX source, with or without server-side processing, based on Spring3 and JPA.

## Technical stack

 - JSP 
 - JSTL 1.2
 - Dandelion-Datatables 1.10.0
 - Jackson 1.9.11
 - Spring 3.2.5.RELEASE
 - Hibernate 4.2.7.Final / JPA 2.0
 - H2 database (in-memory)

## Features
		
 - Data source type: AJAX / AJAX + server-side processing
 - AJAX source
 - AJAX source + server-side processing
 - Pipelining data
 - Custom rendering

## Running this sample

Using __Apache Tomcat__ :

    mvn tomcat7:run

Using __Jetty__:

    mvn jetty:run

You can then access the sample here: [http://localhost:9090/datatables-jsp-ajax-spring3-jpa](http://localhost:9090/datatables-jsp-ajax-spring3-jpa)

Note that you can also access the H2 web server here: [http://localhost:9091/](http://localhost:9091/).

## Bug/improvement

Please report it using the general issue tracker: [https://github.com/dandelion/issues/issues](https://github.com/dandelion/issues/issues)

=
The [Dandelion team](http://dandelion.github.io/team/).