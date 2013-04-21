<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<c:url value="/advanced" var="advanced" />

<div class="row-fluid">
   <div class="span12">
      <h3>Export with renderFunction</h3>
      <br />
   </div>
</div>

<script>
	function renderFirstName(data, type, full) {
		return data;
	}
	
	function renderLastName(data, type, full) {
		return data;
	}
</script>
<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" url="/persons" export="csv">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" renderFunction="renderFirstName" />
         <datatables:column title="LastName" property="lastName" renderFunction="renderLastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <tab:code>
<datatables:table id="myTableId" data="${persons}">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
   <datatables:prop name="compressor.enable" value="true" />
</datatables:table></tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <p class="alert alert-error">
         <strong>:-(</strong><br /> Not supported yet !
      </p>
   </tab:thymeleaf>
</tab:tab>