<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Custom column header</h3>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" cssClass="display" row="person">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
         <datatables:column sortable="false" cssCellStyle="text-align:center;">
            <datatables:columnHead>
               <input type="checkbox" onclick="$('#myTableId').find(':checkbox').attr('checked', this.checked);" />
            </datatables:columnHead>
            <input type="checkbox" value="${person.id}" />
         </datatables:column>
      </datatables:table>

   </div>
</div>