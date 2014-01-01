datatables-jsp-export
=================================================================

A sample which shows how to export data using both DOM and AJAX sources, based on Spring3.

See below the full list of features contained in this sample.

## Technology stack

 - JSP
 - Dandelion-Datatables 0.10.0
 - Jackson 1.9.11
 - Spring 3.2.5.RELEASE
 - Hibernate 4.2.7.Final / JPA 2.0
 - H2 database

## Features

 - __Data source type__: AJAX + server-side processing
 - Filter-based export (DOM sources)
 - Controller-based export (DOM and AJAX sources)
 - Customized column content

## Running the sample app

Using __Tomcat__ :

    mvn tomcat7:run

Using __Jetty__:

    mvn jetty:run

You can then access the sample here: [http://localhost:9090/datatables-jsp-export](http://localhost:9090/datatables-jsp-export)

Note that you can also access the H2 web server here: [http://localhost:9091/](http://localhost:9091/). Just type `jdbc:h2:mem:dataSource` in the JDBC URL.

## Bug/improvement

Please report it using the general issue tracker: [https://github.com/dandelion/issues/issues](https://github.com/dandelion/issues/issues)

=
The [Dandelion team](http://dandelion.github.io/team/).