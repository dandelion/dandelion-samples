<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Using implicit object</h3>
      <p>Dandelion-Datatables makes available the "rowIndex" variable, allowing to access the
         current row index through the name assigned by the "row" table attribute.</p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" cssClass="display" row="person">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail">
            <a href="mailto:${person.mail}">${person.mail}</a>
         </datatables:column>
         <datatables:column title="Row index">
            <c:out value="${person_rowIndex}" />
         </datatables:column>
      </datatables:table>

   </div>
</div>