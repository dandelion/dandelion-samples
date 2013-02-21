<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Plugins combo</h3>
      <hr />
      <p>You can combine several plugins in the same table. Just set the right tag attributes for the activation.</p>
      <p>
         <strong>ColReorder</strong> and <strong>Scroller</strong> have been activated in the following table.
      </p>
      <div class="alert">
         <strong>Warning!</strong> <br />Some limitations due to DataTables plugin's compatibility may appear. For
         instance, Scroller and FixedHeader plugins are still not compatibles.
      </div>
   </div>
</div>

<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" data="${persons}" scroller="true" colReorder="true">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <tab:code>
<datatables:table id="myTableId" data="${persons}" scroller="true" colReorder="true">
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
   <thead dt:colReorder="true" dt:scroller="true">
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
         <td><a th:href="${'mailto:' + person.mail}" th:text="${person.mail}">john@doe.com</a></td>
      </tr>
   </tbody>
</table></tab:code>
   </tab:thymeleaf>
</tab:tab>