<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Filtering using drop-down lists with predefined values</h3>
      <br />
   </div>
</div>

<script>
	var myPredefinedValues = ['Kalken', 'Sheffield', 'Oostende'];
</script>

<c:url var="datasource" value="/persons1"></c:url>
<datatables:table id="myTableId" url="${datasource}" serverSide="true" processing="true">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" filterable="true" filterType="select" filterValues="myPredefinedValues"/>
   <datatables:column title="Mail" property="mail" />
   <datatables:column title="Birthdate" property="birthDate" format="{0,date,dd/MM/yyyy}" />
   <datatables:column title="Pocket money" property="pocketMoney" />
   <datatables:column title="Company" property="company.name" />
</datatables:table>