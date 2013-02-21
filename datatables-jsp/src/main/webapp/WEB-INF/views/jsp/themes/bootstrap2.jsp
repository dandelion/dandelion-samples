<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet" />
<link href="<c:url value="/css/custom.css" />" rel="stylesheet">
<link href="<c:url value="/css/prettify.css" />" rel="stylesheet" />
<link href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" rel="stylesheet" />
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script src="<c:url value="/js/prettify.js" />"></script>
<script src="<c:url value="/js/ga.js" />"></script>


<div class="row-fluid">
   <div class="span12">
      <h3>Bootstrap 2 theme</h3>
      <p>In order to activate the Bootstrap 2 theme, just :
      <ul>
         <li>set the <code>theme</code>/<code>dt:theme</code> table attribute to <tt>bootstrap2</tt> (JSP/Thymeleaf)</li>
         <li>depending on your needs, add the table Bootstrap CSS classes using <code>cssClass</code> table
            attribute
         </li>
      </ul>
      </p>
      <p>
      In a nutshell, you need to include in your page the following assets :
      <ul>
         <li>jQuery of course :-)</li>
         <li>Bootstrap (JS + CSS)</li>
         <li>DataTables (JS + CSS + IMG)</li>
      </ul>
      </p>
      <br />
   </div>
</div>

<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" cssClass="table table-striped table-bordered table-condensed" data="${persons}"
         theme="bootstrap2">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <tab:code>
<datatables:table id="myTableId" cssClass="table table-striped table-bordered table-condensed" data="${persons}" theme="bootstrap2">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="Street" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
</datatables:table></tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <tab:code>
<table id="myTable" dt:table="true" dt:theme="bootstrap2" class="table table-striped table-bordered table-condensed">
   <thead>
      <tr>
         <th>Id</th>
         <th>Firstname</th>
         <th>Lastname</th>
         <th>Street</th>
         <th>Mail</th>
      </tr>
   </thead>
   <tbody>
      <tr th:each="person : ${persons}">
         <td th:text="${person.id}">1</td>
         <td th:text="${person.firstName}">John</td>
         <td th:text="${person.lastName}">Doe</td>
         <td th:text="${person.address.town.name}">Nobody knows !</td>
         <td th:text="${person.mail}">john@doe.com</td>
      </tr>
   </tbody>
</table></tab:code>
   </tab:thymeleaf>
</tab:tab>