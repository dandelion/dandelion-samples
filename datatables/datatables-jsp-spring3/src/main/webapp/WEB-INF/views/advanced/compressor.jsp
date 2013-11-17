<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<c:url value="/advanced" var="advanced" />

<div class="row-fluid">
   <div class="span12">
      <h3>Compression</h3>
      <br />
   </div>
</div>

<datatables:table id="myTableId" data="${persons}">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" sortType="natural" />
   <datatables:prop name="main.compressor.enable" value="true" />
</datatables:table>
