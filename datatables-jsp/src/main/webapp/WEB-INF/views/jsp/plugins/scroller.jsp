<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Scroller</h3>
      <p>
         <a href="http://www.datatables.net/extras/scroller/" class="btn btn-success" style="float: right;">See the
            plugin home</a> This plugin allows you to scroll inside the table data.
      </p>
      <p>
         You just need to set the
         <code>scroller</code>
         table attribute to
         <tt>true</tt>
         to activate the Scroller plugin.
      </p>
      <p>
         By default, the height is 300px but you can configure it with the
         <code>scrollY</code>
         table attribute.
      </p>
      <br />
   </div>
</div>

<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" data="${persons}" scroller="true" appear="block">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <tab:code>
<datatables:table id="myTableId" data="${persons}" scroller="true">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
</datatables:table></tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <tab:code>
<table id="myTable" dt:table="true">
   <thead dt:scroller="true">
      <tr>
         <th>Id</th>
         <th>Firstname</th>
         <th>Lastname</th>
         <th>City</th>
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

<%-- Documentation --%>
<doc:doc source="plugins/scroller.jsp" doc="plugins.scroller.html" />