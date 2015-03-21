<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Applying effect</h3>
      <p>If you wish, you can apply a "fadein" effect to the table and change the effect
         duration.</p>
      <p>The table below will fade in in 1500ms.</p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">
   
      <datatables:table id="myTableId" data="${persons}" cssClass="display" appear="fadein,1500">
         <datatables:column title="Id" property="id" sortable="false" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   
   </div>
</div>