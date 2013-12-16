<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Dynamic attributes</h3>
      <br />
   </div>
</div>

<datatables:table id="myTableId" data="${persons}" name="name" border="1px dashed black">
   <datatables:column title="Id" property="id" />
   <datatables:column title="Firstname" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" sortable="false" />
   <datatables:column title="Mail" property="mail" />
</datatables:table>