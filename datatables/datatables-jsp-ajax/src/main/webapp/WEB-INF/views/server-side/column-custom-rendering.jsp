<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<!-- Update the current scope with extra functions needed for rendering -->
<dandelion:assets scopes="custom-rendering" />

<div class="row-fluid">
   <div class="span12">
      <h3>Custom column rendering</h3>
      <br />
   </div>
</div>

<datatables:table id="myTableId" url="/persons" serverSide="true" processing="true">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" renderFunction="mailify" />
</datatables:table>
