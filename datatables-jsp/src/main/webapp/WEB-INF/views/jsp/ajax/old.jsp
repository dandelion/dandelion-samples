<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<%@ taglib prefix="datatables" uri="http://github.com/datatables4j"%>

<div class="row-fluid">
   <div class="span12">
      <h3>AJAX data souce</h3>
      <h4>Introduction</h4>
      If your application already has some REST web services up, which can return your objects in JSON format, you can
      populate your table with it ! Given that today, there are lots of AJAX framework in Java, and in order to
      alleviate the framework as much as possible, AJAX source feature has been externalized in modules.
      </p>
      <h4>Reference module</h4>
      <p>
         For the moment, you can use the reference AJAX module :
         [datatables4j-ajax-jersey](https://github.com/datatables4j/datatables4j-ajax-jersey). (More will be added over
         the time) This module uses a [Jersey](http://jersey.java.net/ "Jersey") RESTful Java client which will perform
         a GET request on the URL you set in the
         <code>url</code>
         attribute of the table tag. The result will then be mapped in JSON thanks to the
         [Jackson](http://jackson.codehaus.org/ "Jackson") library in order to popupate the table, using the
         [aaData](http://datatables.net/ref#aaData) DataTables parameter. Given the default DataTables4j configuration
         points to the class contained in this module, it will use the Jersey implementation by default. So you just
         need to add the module dependency in your
         <tt>pom.xml</tt>
         to be able to load your table using AJAX.
      </p>
      <h4>In short</h4>
      <p>
         To use AJAX source, you need : * To add an AJAX module dependency in your
         <tt>pom.xml</tt>
         :
      <pre class="prettyprint">
            <dependency> 
               <groupId>org.datatables4j</groupId>
               <artifactId>datatables4j-ajax-jersey</artifactId>
               <version>${ajaxJerseyModuleVersion}</version>
            </dependency>
         </pre>


      * Instead of using the table
      <code>data</code>
      attribute (for DOM source), set the REST WS url in the table
      <code>url</code>
      attribute. That\'s all.
      </p>
      <h4>Example</h4>
      <p>
         If you browse the demo application sources, you\'ll see that the Spring MVC AJAX features are used (since
         [Spring 3.0](http://blog.springsource.org/2010/01/25/ajax-simplifications-in-spring-3-0/ "Jackson")).
         <tab:code>
@RequestMapping(value="/persons", method = RequestMethod.GET) 
public @ResponseBody List<Person> getPersons(){ return personService.get100(); }
         </tab:code>
      </p>
      <p>
         So, all you need to do is to set the REST WS url in the
         <code>url</code>
         attribute :
      </p>
   </div>
</div>

<%--
<tab:tab>
   <tab:demo>

      <datatables:table id="myTableId" url="/persons">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.street1" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </tab:demo>
   <tab:taglib>
      <tab:code>
         <datatables:table id="myTableId" url="/persons">
            <datatables:column title="Id" property="id" />
            <datatables:column title="FirstName" property="firstName" />
            <datatables:column title="LastName" property="lastName" />
            <datatables:column title="Street" property="address.street1" />
            <datatables:column title="Mail" property="mail" />
         </datatables:table>
      </tab:code>
   </tab:taglib>
</tab:tab>
 --%>
<table id="myTableIdTest" style="display: none;">
   <thead>
      <tr>
         <th>Id</th>
         <th>FirstName</th>
         <th>LastName</th>
         <th>Street</th>
         <th>Mail</th>
      </tr>
   </thead>
   <tfoot>
      <tr></tr>
   </tfoot>
   <tbody>
   </tbody>
</table>
<script>
	var oTable_myTableIdTest;
	var oTable_myTableIdTest_params = {
		"sDom" : "lfrtip",
		"bProcessing" : true,
		"bServerSide" : true,
		"sAjaxSource" : "<c:url value='/persons3'/>",
		"aoColumns" : [ {
			"mData" : "id"
		}, {
			"mData" : "firstName"
		}, {
			"mData" : "lastName"
		}, {
			"mData" : "address.town.name"
		}, {
			"mData" : "mail"
		} ],
		"fnInitComplete" : function() {
			oTable_myTableIdTest.fnAdjustColumnSizing(true);
		}
	};
	$(document).ready(
			function() {
				oTable_myTableIdTest = $('#myTableIdTest').dataTable(
						oTable_myTableIdTest_params);
				$('#myTableIdTest').fadeIn();
			});
</script>