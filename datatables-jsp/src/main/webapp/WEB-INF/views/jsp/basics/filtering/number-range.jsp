<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Table filtering</h3>
      <hr />
   </div>
</div>

<datatables:table id="myThirdTableId" data="${persons}">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
   <datatables:column title="Birthdate" property="birthDate" format="{0,date,dd/MM/yyyy}" sortType="natural" />
   <datatables:column title="Pocket money" property="pocketMoney" filterable="true" filterType="number_range" />
   <datatables:column title="Company" property="company.name" />
</datatables:table>