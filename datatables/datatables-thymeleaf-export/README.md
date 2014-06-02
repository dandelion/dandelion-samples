datatables-thymeleaf-export
=================================================================

A sample which shows how to export data using both DOM and AJAX sources, based on Spring3.

## Technology stack

 - Thymeleaf 2.1.3.RELEASE
 - Dandelion-Datatables 0.10.0
 - Jackson 1.9.13
 - Spring 3.2.9.RELEASE
 - Hibernate 4.3.5.Final / JPA 2.0
 - H2 database
 
## Features

 - __Data source type__: DOM + AJAX + server-side processing
 - Filter-based export (DOM sources)
 - Controller-based export (DOM and AJAX sources)
 - Customized column content
 - Customized export

## Running this sample

Using __Apache Tomcat__:

    mvn tomcat7:run

Using __Jetty__:

    mvn jetty:run

You can then access the sample here: [http://localhost:9090/datatables-thymeleaf-export](http://localhost:9090/datatables-thymeleaf-export)

## Bug/improvement

Please report it using the issue tracker dedicated to all sample apps: [https://waffle.io/dandelion/dandelion-samples](https://waffle.io/dandelion/dandelion-samples)

=
The [Dandelion team](http://dandelion.github.io/team/).