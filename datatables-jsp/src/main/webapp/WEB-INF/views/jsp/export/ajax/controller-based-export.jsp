<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>AJAX source / controller-based export</h3>
      <br />
   </div>
</div>

<c:url var="datasource" value="/persons2" />
<c:url var="exportCsvUrl" value="/export.csv" />
<c:url var="exportXmlUrl" value="/export.xml" />
<c:url var="exportXlsUrl" value="/export.xls" />
<c:url var="exportPdfUrl" value="/export.pdf" />

<datatables:table id="myTableId" url="${datasource}" serverSide="true" processing="true" export="csv,xml,xls,pdf">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
   <datatables:export type="csv" cssClass="btn" url="${exportCsvUrl}" />
   <datatables:export type="xml" cssClass="btn" url="${exportXmlUrl}" />
   <datatables:export type="xls" cssClass="btn" url="${exportXlsUrl}" />
   <datatables:export type="pdf" cssClass="btn" url="${exportPdfUrl}" />
</datatables:table>
