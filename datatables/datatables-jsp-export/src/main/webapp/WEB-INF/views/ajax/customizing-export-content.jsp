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
            <h3>AJAX sources / Customizing export content</h3>
            <p>Actually, when the export is based on a controller, view and export are (almost)
               totally decoupled.
            </p>
            <p>
               To customize the export content, everything occurs server-side, in the controller
               method. Just adapt the usage of the
               <code>HtmlTableBuilder</code>
               to fill the columns with what you want.
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
               <datatables:export type="pdf" cssClass="btn" url="/export-custom-content" />
            </datatables:table>

         </div>
      </div>
   </div>
</body>