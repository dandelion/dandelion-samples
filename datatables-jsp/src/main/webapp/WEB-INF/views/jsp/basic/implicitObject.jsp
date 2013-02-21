<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Using implicit object</h3>
      <p>
         <strong>DataTables4j</strong> make some implicit objects available inside the
         <code>datatables:table</code>
         tag. This way, you can configure the column's content as you wish.
      </p>
      <p>
         Thanks to the
         <code>row</code>
         table attribute, you will be able to give a name for the current iterated object of the collection. Then, you
         can access it using
         <code>&#36;{givenName.beanProperty}</code>
         inside the
         <code>column</code>
         tags.
      </p>
      <p>
         In the example below,
         <code>mailto</code>
         links have been generated to directly access the person's mail. <br />
   </div>
</div>

<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" data="${persons}" row="person">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail">
            <a href="mailto:${person.mail}">${person.mail}</a>
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
   <datatables:column title="Mail">
      <a href="mailto:${person.mail}">${person.mail}</a>
   </datatables:column>
</datatables:table></tab:code>
      <tab:thymeleaf>
         <p>
            Actually, there's nothing specific to <strong>DataTables4j</strong> here. Thymeleaf natively allows you to
            iterate over some objects (see <a href="http://www.thymeleaf.org/usingthymeleaf.html">Documentation</a> for
            more details).
         </p>
         <tab:code>
<table id="myTable" dt:table="true">
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
         <td><a th:href="${'mailto:' + person.mail}" th:text="${person.mail}">john@doe.com</a></td>
      </tr>
   </tbody>
</table></tab:code>
      </tab:thymeleaf>
   </tab:taglib>

</tab:tab>