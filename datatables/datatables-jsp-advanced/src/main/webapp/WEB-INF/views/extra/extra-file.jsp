<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Using extra file</h3>
      <br />
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}">
         <datatables:column title="Id" property="id" />
         <datatables:column title="Firstname" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" sortable="false" />
         <datatables:column title="Mail" property="mail" />
         <datatables:extraFile src="/assets/js/datatables.extraFile.js" insert="BEFORESTARTDOCUMENTREADY" />
      </datatables:table>

   </div>
</div>