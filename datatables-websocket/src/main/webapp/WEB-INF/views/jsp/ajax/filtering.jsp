<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Server-side processing</h3>
      <br />
   </div>
</div>

<script>
	function testFilter(){
		oTable_myTableId.fnFilter($('#test_filter').val(), 2);
	}
</script>
<input id="test_filter" type="text" onkeyup="testFilter();" />

<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" url="/persons1" serverSide="true" processing="true">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" filterable="true" />
         <datatables:column title="LastName" property="lastName" filterable="true" />
         <datatables:column title="City" property="address.town.name" filterable="true" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <tab:code>
<datatables:table id="myTableId" url="/persons1" serverSide="true" processing="true">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
</datatables:table></tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <tab:code>
<table id="myTableId" dt:table="true" dt:url="/persons1" dt:serverside="true" dt:processing="true">
   <thead>
      <tr>
         <th dt:property="id">Id</th>
         <th dt:property="firstName">Firstname</th>
         <th dt:property="lastName">Lastname</th>
         <th dt:property="address.town.name">City</th>
         <th dt:property="mail">Mail</th>
      </tr>
   </thead>
</table></tab:code>
   </tab:thymeleaf>
</tab:tab>