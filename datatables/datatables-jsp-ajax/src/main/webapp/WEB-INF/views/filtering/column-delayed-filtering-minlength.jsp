<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<!-- Update the current scope with extra functions needed for rendering -->
<dandelion:assets scopes="custom-rendering" />

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Column delayed filtering with min length</h3>
      <p>In the following example, the input field used to filter the 'City' column will react only
         when 3 new characters are entered.</p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">
   
      <datatables:table id="myTableId" url="/persons" serverSide="true" processing="true">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" filterable="true" filterMinLength="3" />
         <datatables:column title="Mail" property="mail" renderFunction="mailify" />
      </datatables:table>
      
   </div>
</div>