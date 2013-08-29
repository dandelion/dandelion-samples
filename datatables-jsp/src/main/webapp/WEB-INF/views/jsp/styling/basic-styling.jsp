<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Basic styling</h3>
      <br />
   </div>
</div>

<div class="row-fluid">
   <div class="span12">
      <datatables:table id="myTableId" data="${persons}">
         <datatables:column title="Id" property="id" sortable="false" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" cssStyle="text-align:center;" />
         <datatables:column title="Mail" property="mail" cssClass="toto" cssCellStyle="text-align:center;" />
      </datatables:table>
   </div>
</div>