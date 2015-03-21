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
            <h3>AJAX sources / Controller-based export</h3>
            <p>
               All exports in this example use a custom export URL. Each URL is mapped to a
               corresponding method in the
               <code>ExportController</code>
               class.
            </p>
         </div>
      </div>
      
      <div class="row-fluid">
         <div class="span12">

            <datatables:table id="myTableId" url="/persons" serverSide="true" export="pdf,csv,xls,xml">
               <datatables:column title="Id" property="id" />
               <datatables:column title="FirstName" property="firstName" />
               <datatables:column title="LastName" property="lastName" />
               <datatables:column title="City" property="address.town.name" />
               <datatables:column title="Mail" property="mail" />
               <datatables:column title="Birth date" property="birthDate" renderFunction="moment,app-custom-rendering#toDate" />
               <datatables:export type="xml" cssClass="btn" url="/export.xml" />
               <datatables:export type="csv" cssClass="btn" url="/export.csv" />
               <datatables:export type="xls" cssClass="btn" url="/export.xls" />
               <datatables:export type="pdf" cssClass="btn" url="/export.pdf" />
            </datatables:table>

         </div>
      </div>
   </div>
</body>