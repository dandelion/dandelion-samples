<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Column custom content</h3>
      <p>
         <code>datatables:column</code>
         tag can either have a body or not.
      </p>
      <ul>
         <li>Using the <code>property</code> attribute, the column's content will be filled with the <code>property</code>
            of the current bean of the iterated collection. In this case, you do not need to set a body for the tag.
         </li>
         <li>Or you can set a body with plain text, HTML code or any other JSP tags. In this case, you do not need
            the <code>property</code> attribute.
         </li>
      </ul>
      <p>In the example below, an Actions column has been added with some links !</p>
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