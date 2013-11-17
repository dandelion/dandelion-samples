<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Sorting initialization</h3>
      <br />
   </div>
</div>

<datatables:table id="myTableId" data="${persons}">
   <datatables:column title="Id" property="id" sortable="false" />
   <datatables:column title="FirstName" property="firstName" sortInit="desc" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
</datatables:table>
