<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Pipelining data for paging</h3>
      <br />
   </div>
</div>

<c:url var="datasource" value="/persons" />

<datatables:table id="myTableId" url="${datasource}" serverSide="true" processing="true" pipelining="true" pipeSize="6">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
</datatables:table>