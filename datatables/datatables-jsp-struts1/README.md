Dandelion-Datatables Struts1 sample
=================================================================

A sample which shows how to configure Dandelion when using i18n, export and server-side processing with Struts1.

See below the full list of features contained in this sample.

## Technical stack

 - JSP
 - Struts 1.3.10
 - JSTL

## Dandelion stack
All Dandelion modules used in this sample app:

 - datatables-jsp
 - datatables-struts1
 
<table>
   <thead>
      <tr>
         <th>Dandelion-Datatables</th>
         <th>Dandelion</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td>datatables-jsp</td>
         <td>dandelion-spring3</td>
      </tr>
      <tr>
         <td>datatables-spring3</td>
         <td></td>
      </tr>
      <tr>
         <td>datatables-export-poi</td>
         <td></td>
      </tr>
      <tr>
         <td>datatables-export-poi-ooxml</td>
         <td></td>
      </tr>
      <tr>
         <td>datatables-export-itext</td>
         <td></td>
      </tr>
   </tbody>
</table>

## Features

 - Data source type: DOM, AJAX, AJAX + server-side processing
 - I18n
 - Export

## Running the sample app

Using __Tomcat__ :

    mvn tomcat7:run

Using __Jetty__:

    mvn jetty:run

You can then access the sample here: [http://localhost:9090/datatables-jsp-struts1](http://localhost:9090/datatables-jsp-struts1)

## Bug/improvement

Please report it using the general issue tracker: [https://github.com/dandelion/issues/issues](https://github.com/dandelion/issues/issues)

=
The [Dandelion team](http://dandelion.github.io/team/).