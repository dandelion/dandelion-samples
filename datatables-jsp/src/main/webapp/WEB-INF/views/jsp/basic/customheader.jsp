<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Custom column header</h3>
      <p>A classic use case the "master" checkbox in a column's head.</p>
      <p>
         Well, this can be done using the
         <code>datatables:columnHead</code>
         tag and a specific attribute :
         <code>uid</code>
         .
      </p>
      <p>
         As soon as you need to customize a column's head, you will have to set the
         <code>uid</code>
         attribute both on the
         <code>datatables:columnHead</code>
         and on the corresponding
         <code>datatables:column</code>
         tags. This way, the first will be used to generate the column's head whereas the latter will be used for the
         corresponding column's cells.
      </ul>
      </p>
      <div class="alert alert-warn">
         <strong>Warning !</strong><br /> As soon as the
         <code>datatables:columnHead</code>
         is used , the
         <code>title</code>
         column attribute will be ignored !
      </div>
      <p>In the example below, a "master checkbox" has been added in the head.</p>
      <br />
   </div>
</div>

<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" data="${persons}" row="person">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
         <datatables:columnHead uid="actionColumn">
            <input type="checkbox" onclick="$('#myTableId').find(':checkbox').attr('checked', this.checked);" />
         </datatables:columnHead>
         <datatables:column uid="actionColumn" sortable="false" cssCellStyle="text-align:center;">
            <input type="checkbox" value="${person.id}" />
         </datatables:column>
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <tab:code>
<datatables:table id="myTableId" data="${persons}" row="person">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
   <datatables:columnHead uid="actionColumn">
      <input type="checkbox" onclick="$('#myTableId').find(':checkbox').attr('checked', this.checked);" />
   </datatables:columnHead>
   <datatables:column uid="actionColumn" sortable="false" cssCellStyle="text-align:center;">
      <input type="checkbox" value="${person.id}" />
   </datatables:column>
</datatables:table></tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <tab:code>
<table id="myTableId" dt:table="true">
   <thead>
      <tr>
         <th>Id</th>
         <th>Firstname</th>
         <th>Lastname</th>
         <th>City</th>
         <th>Mail</th>
         <th dt:sortable="false"><input type="checkbox"
            onclick="$('#myTableId').find(':checkbox').attr('checked', this.checked);" /></th>
      </tr>
   </thead>
   <tbody>
      <tr th:each="person : ${persons}">
         <td th:text="${person.id}">1</td>
         <td th:text="${person.firstName}">John</td>
         <td th:text="${person.lastName}">Doe</td>
         <td th:text="${person.address.town.name}">Nobody knows !</td>
         <td th:text="${person.mail}">john@doe.com</td>
         <td style="text-align: center;"><input type="checkbox" th:value="${person.id}" /></td>
      </tr>
   </tbody>
</table></tab:code>
   </tab:thymeleaf>
</tab:tab>