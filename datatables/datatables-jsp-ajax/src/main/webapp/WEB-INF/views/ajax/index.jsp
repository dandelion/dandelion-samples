<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Using an AJAX source</h3>
      <p>The following table is populated using an AJAX source.</p>
      <p>Note however that DataTables will process it client-side.</p>
   </div>
</div>

<div class="row-fluid row-intro">
   <div class="span12">

      <datatables:table id="myTableId" cssClass="display" url="/ajax/persons-no-server-side">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </div>
</div>