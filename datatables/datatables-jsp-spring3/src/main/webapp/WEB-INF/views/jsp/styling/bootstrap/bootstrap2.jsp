<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<%-- Make the ugly row in the thead disappear --%>
<dandelion:assets excludedAssets="datatables-css" />

<div class="row-fluid">
   <div class="span12">
      <h3>Bootstrap 2 theme</h3>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">
      <datatables:table id="myTableId" cssClass="table table-striped table-bordered table-condensed" data="${persons}" ext="bootstrap2">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   </div>
</div>