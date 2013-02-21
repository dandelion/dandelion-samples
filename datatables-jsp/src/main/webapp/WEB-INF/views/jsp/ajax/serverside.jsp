<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Server-side processing</h3>
      <h4>Introduction</h4>
      <p>
         If you are working with seriously large databases, you might want to consider using the server-side options
         that DataTables provides. <br />Most of the DataTables features (paging, sorting, filtering, ...) can be
         handed off to a server. For this purpose, DataTables provides <a href="http://datatables.net/usage/server-side">some
            parameters</a> (sent via an XHR request) that can be processed in order to return just the data that are needed
         to display the table.
      </p>
      <p>
         Since <a href="https://github.com/datatables4j/issues/issues?milestone=3&page=1&state=closed">v0.8.2</a>, <strong>DataTables4j</strong>
         supports server-side processing by providing some utility classes that should help you to set this up.
      </p>
      <h4>What is server-side processing using DataTables4j ?</h4>
      <p>Actually, the following steps are performed :
      <ol>
         <li>On table loading (or on every action performed on it), an XHR request is sent to the server with the
            DataTables parameters</li>
         <li>The controller intercepts the request, maps its parameters into a <code>DatatablesCriterias</code>
            bean using the utility <code>DatatablesCriterias.getFromRequest(HttpServletRequest request)</code> method
         </li>
         <li>The various classic layers of the application are passed through with the DataTables criterias, SQL
            queries are performed depending on the criterias and the results are wrapped in a <code>DataSet</code> bean,
            that contains all the required informations to build a response understandable by DataTables
         </li>
         <li>A <code>DatatablesResponse</code> is built using the returned <code>DataSet</code> and sent back to
            DataTables in the right format (JSON), allowing the table to be refreshed !
         </li>
      </ol>
      </p>
      <h4>What do I need to do ?</h4>
      <p>Obviously, server-side processing requires a bit more work than client-side one. Here are the needed steps
         to set this up.
      <p>
      <ul>
         <li>Prepare the needed SQL queries using your favorite ORM framework<br />Waiting for other implementations are
            added, you can browse the following example that uses <a
            href="https://github.com/datatables4j/datatables4j-live-demo/blob/master/src/main/java/com/github/datatables4j/demo/dao/PersonDao.java">the
               Hibernate implementation of JPA</a>.
         </li>
         <li>Adapt existing or create new <a
            href="https://github.com/datatables4j/datatables4j-live-demo/blob/master/src/main/java/com/github/datatables4j/demo/service/impl/PersonServiceJpaImpl.java">business
               services</a> using the <strong>DataTables4j</strong> utility classes
         </li>
         <li>Create the web service that will be used by DataTables to perform the AJAX request using the <strong>DataTables4j</strong>
            utility classes<br /> The following example uses <a
            href="https://github.com/datatables4j/datatables4j-live-demo/blob/master/src/main/java/com/github/datatables4j/demo/ajax/SpringMvcAjaxController.java">AJAX-enabled
               Spring controllers</a>
         </li>
         <li>Use the right DataTables4j markup to activate server-side processing. Take a look just below !</li>
      </ul>
      </p>
      <br />
   </div>
</div>

<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" url="/persons1" serverSide="true" processing="true">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <tab:code>
<datatables:table id="myTableId" url="/persons1" serverSide="true" processing="true">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
</datatables:table></tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <tab:code>
<table id="myTableId" dt:table="true" dt:url="/persons1" dt:serverside="true" dt:processing="true">
   <thead>
      <tr>
         <th dt:property="id">Id</th>
         <th dt:property="firstName">Firstname</th>
         <th dt:property="lastName">Lastname</th>
         <th dt:property="address.town.name">City</th>
         <th dt:property="mail">Mail</th>
      </tr>
   </thead>
</table></tab:code>
   </tab:thymeleaf>
</tab:tab>