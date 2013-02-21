<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Changing the appearance</h3>
      <p>By default, when the table has finished loading, it is displayed using a <a href="http://api.jquery.com/fadeIn/">jQuery fadeIn()</a> animation (with default parameter).</p>
      <p>
         This behaviour can be changed using the <code>appear</code> / <code>dt:appear</code> table attribute (JSP/Thymeleaf)
      </p>
      <br />
   </div>
</div>

<tab:tab>
   <p>
      In the following example, a duration of 1500 milliseconds has been set to the fadeIn animation instead of the
      default 400 milliseconds but you cal also set the
      <code>block</code>
      value to trigger the <a href="http://api.jquery.com/show/">jQuery show()</a> function.
   </p>
   <tab:demo>
      <datatables:table id="myTableId" data="${persons}" appear="fadein,1500">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <tab:code>
<datatables:table id="myTableId" data="${persons}" appear="fadein,1500">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
</datatables:table></tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <tab:code>
<table id="myTable" dt:table="true" dt:appear="fadein,1500">
   <thead>
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