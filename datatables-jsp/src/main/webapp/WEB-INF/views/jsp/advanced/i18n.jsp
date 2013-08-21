<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Internationalization</h3>
      <br />
   </div>
</div>

<datatables:table id="myTableId" data="${persons}" confGroup="group1" row="person">
   <datatables:column>
      <c:out value="${person.id}" />
   </datatables:column>
   <datatables:column titleKey="table.header.firstname" property="firstName" />
   <datatables:column titleKey="table.header.lastname" property="lastName" />
   <datatables:column titleKey="table.header.city" property="address.town.name" sortable="false" />
   <datatables:column titleKey="table.header.mail" property="mail" />
</datatables:table>
