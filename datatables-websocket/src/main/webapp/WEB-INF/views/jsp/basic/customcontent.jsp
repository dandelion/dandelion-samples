<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Column custom content</h3>
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
         <datatables:column title="Actions" sortable="false">
            <a onclick="alert('Person ' + ${person.id} + ' deleted !');" class="btn btn-mini" title="Remove"><i
               class="icon-trash"></i></a>
            <a onclick="alert('Person ' + ${person.id} + ' edited !');" class="btn btn-mini" title="Edit"><i
               class="icon-edit"></i></a>
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
   <datatables:column title="Actions" sortable="false">
      <a onclick="alert('Person ' + ${person.id} + ' deleted !');" class="btn btn-mini" title="Remove"><i class="icon-trash"></i></a>
      <a onclick="alert('Person ' + ${person.id} + ' edited !');" class="btn btn-mini" title="Edit"><i class="icon-edit"></i></a>
   </datatables:column>
</datatables:table></tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <p>Actually, you just need to use the Standard Thymeleaf Expression to set any content you want inside the
         columns.</p>
      <tab:code>
<table id="myTable" dt:table="true">
   <thead>
      <tr>
         <th>Id</th>
         <th>Firstname</th>
         <th>Lastname</th>
         <th>City</th>
         <th>Mail</th>
         <th>Actions</th>
      </tr>
   </thead>
   <tbody>
      <tr th:each="person : ${persons}">
         <td th:text="${person.id}">1</td>
         <td th:text="${person.firstName}">John</td>
         <td th:text="${person.lastName}">Doe</td>
         <td th:text="${person.address.town.name}">Nobody knows !</td>
         <td th:text="${person.mail}">john@doe.com</td>
         <td>
            <a th:onclick="'alert(\'Person ' + ${person.id} + ' deleted !\');'" class="btn btn-mini" title="Remove"><i class="icon-trash"></i></a>
            <a th:onclick="'alert(\'Person ' + ${person.id} + ' edited !\');'" class="btn btn-mini" title="Edit"><i class="icon-edit"></i></a>
         </td>
      </tr>
   </tbody>
</table>
      </tab:code>
   </tab:thymeleaf>
</tab:tab>