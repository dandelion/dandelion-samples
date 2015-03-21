<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Handling null/default values</h3>
      <p>By default, an empty string is displayed when the property's value is null.</p>
      <p>In such a case, you can also choose to display a default value.</p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">
   
      <datatables:table id="myTableId" cssClass="display" url="/ajax/persons-no-server-side">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" default="My default value!" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </div>
</div>