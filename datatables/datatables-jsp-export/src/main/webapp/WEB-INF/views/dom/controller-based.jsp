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
            <h3>DOM sources / Controller-based export</h3>
            <p>If you have the necessary plumbing server-side, you can also export from a controller
               with a DOM source. The export file will be much more precise than with a filter since
               you will see in the export exactly what you see in the browser.</p>
         </div>
      </div>
      
      <div class="row-fluid">
         <div class="span12">

            <datatables:table id="myTableId" data="${persons}" row="person" export="csv">
               <datatables:column title="Id" property="id" id="toto" />
               <datatables:column title="FirstName" property="firstName" />
               <datatables:column title="LastName" property="lastName" />
               <datatables:column title="City" property="address.town.name" />
               <datatables:column title="Mail">
                  <a href="mailto:${person.mail}">${person.mail}</a>
               </datatables:column>
               <datatables:export type="csv" cssClass="btn" />
            </datatables:table>

         </div>
      </div>
   </div>
</body>