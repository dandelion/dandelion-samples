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
            <h3>Links position</h3>
            <p>
               You can move the export links around the table and duplicate them by using the
               <code>dom</code> attribute.
            </p>
            <p>In this example, the export links are displayed at top right and bottom right.</p>
         </div>
      </div>
      
      <div class="row-fluid">
         <div class="span12">

            <datatables:table id="myTableId" url="/persons" serverSide="true" export="xls" dom="lEfrtiEp">
               <datatables:column title="Id" property="id" />
               <datatables:column title="FirstName" property="firstName" />
               <datatables:column title="LastName" property="lastName" />
               <datatables:column title="City" property="address.town.name" />
               <datatables:column title="Mail" property="mail" />
               <datatables:column title="Birth date" property="birthDate" renderFunction="moment,app-custom-rendering#toDate" />
               <datatables:export type="pdf" cssClass="btn" url="/export.pdf" />
               <datatables:export type="xls" cssClass="btn" url="/export.xls" />
            </datatables:table>

         </div>
      </div>
   </div>
</body>