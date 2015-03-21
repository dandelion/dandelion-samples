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
            <h3>AJAX sources / Controller-based export using a custom HTTM method</h3>
            <p>
               By default, the export request will be performed using a
               <code>HTTP GET</code>
               . Depending on your server-side configuration, you may need to change it.
            </p>
            <p>
               In this example, the export will be performed using a
               <code>HTTP POST</code>
               .
            </p>
         </div>
      </div>
      
      <div class="row-fluid">
         <div class="span12">

            <datatables:table id="myTableId" url="/persons" serverSide="true" export="pdf">
               <datatables:column title="Id" property="id" />
               <datatables:column title="FirstName" property="firstName" />
               <datatables:column title="LastName" property="lastName" />
               <datatables:column title="City" property="address.town.name" />
               <datatables:column title="Mail" property="mail" />
               <datatables:column title="Birth date" property="birthDate" renderFunction="moment,app-custom-rendering#toDate" />
               <datatables:export type="pdf" cssClass="btn" url="/export.pdf" label="Export using a HTTP POST" method="post" />
            </datatables:table>

         </div>
      </div>
   </div>
</body>