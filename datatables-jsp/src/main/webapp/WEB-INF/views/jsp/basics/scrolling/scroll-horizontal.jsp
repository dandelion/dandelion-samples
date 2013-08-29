<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>
<div class="row-fluid">
   <div class="span12">
      <h3>Horizontal scrolling</h3>
      <br />
   </div>
</div>

<datatables:table id="myTableId" data="${persons}" scrollX="120%">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" filterable="true" />
   <datatables:column title="Mail" property="mail" filterable="true" />
   <datatables:column title="Birthdate" property="birthDate" format="{0,date,dd/MM/yyyy}" filterable="true" filterCssClass="toto" />
   <datatables:column title="Pocket money" property="pocketMoney" filterable="true" />
   <datatables:column title="Company" property="company.name" filterable="true" />
</datatables:table>
