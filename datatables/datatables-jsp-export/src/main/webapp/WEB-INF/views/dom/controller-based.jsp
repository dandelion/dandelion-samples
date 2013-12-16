<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
   <jsp:include page="../common/head.jsp"/>
</head>
<body>
   
   <jsp:include page="../common/navbar.jsp"/>

   <div class="container">
      <div class="row-fluid row-intro">
         <div class="span12">
            <h3>DOM source / controller-based export</h3>
            <p>
               Blabla
            </p>
         </div>
      </div>
      
      <div class="row-fluid">
         <div class="span12">

            <c:url var="datasource" value="/persons2" />
            <c:url var="exportCsvUrl" value="/export.csv?dandelionAssetFilterState=false" />
            <c:url var="exportXmlUrl" value="/export.xml?dandelionAssetFilterState=false" />
            <c:url var="exportXlsUrl" value="/export.xls?dandelionAssetFilterState=false" />
            <c:url var="exportPdfUrl" value="/export.pdf?dandelionAssetFilterState=false" />
            
            <datatables:table id="myTableId" data="${persons}" row="person" export="csv,xml,xls,pdf">
               <datatables:column title="Id" property="id" id="toto" />
               <datatables:column title="FirstName" property="firstName" />
               <datatables:column title="LastName" property="lastName" />
               <datatables:column title="City" property="address.town.name" />
               <datatables:column title="Mail">
                  <a href="mailto:${person.mail}">${person.mail}</a>
               </datatables:column>
               <datatables:export type="csv" cssClass="btn" url="${exportCsvUrl}" method="post"  />
               <datatables:export type="xml" cssClass="btn" url="${exportXmlUrl}" />
               <datatables:export type="xls" cssClass="btn" url="${exportXlsUrl}" />
               <datatables:export type="pdf" cssClass="btn" url="${exportPdfUrl}" />
            </datatables:table>

         </div>
      </div>
   </div>
</body>