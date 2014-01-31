datatables-thymeleaf-export
=================================================================

A sample which shows how to export data using both DOM and AJAX sources, based on Spring3.

## Technology stack

 - Thymeleaf 2.1.1.RELEASE
 - Dandelion-Datatables 0.10.0
 - Jackson 1.9.11
 - Spring 3.2.5.RELEASE
 - Hibernate 4.2.7.Final / JPA 2.0
 - H2 database
 
## Features

 - __Data source type__: DOM + AJAX + server-side processing
 - Filter-based export (DOM sources)
 - Controller-based export (DOM and AJAX sources)
 - Customized column content
 - Customized export

## Running this sample

Using __Apache Tomcat__ :

    mvn tomcat7:run

Using __Jetty__:

    mvn jetty:run

You can then access the sample here: [http://localhost:9090/datatables-thymeleaf-export](http://localhost:9090/datatables-thymeleaf-export)

## Bug/improvement

Please report it using the general issue tracker: [https://github.com/dandelion/dandelion-samples/issues](https://github.com/dandelion/dandelion-samples/issues)

=
The [Dandelion team](http://dandelion.github.io/team/).