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
            <h3>Totally custom export</h3>
            <p>In this example, the table is exportable in the custom format "myFormat". The export
               configuration is built inside the controller before the rendering.</p>
         </div>
      </div>
      
      <div class="row-fluid">
         <div class="span12">

            <datatables:table id="myTableId" url="/persons" serverSide="true" processing="true" export="myFormat">
               <datatables:column title="Id" property="id" />
               <datatables:column title="FirstName" property="firstName" />
               <datatables:column title="LastName" property="lastName" />
               <datatables:column title="City" property="address.town.name" />
               <datatables:column title="Mail" property="mail" />
               <datatables:column title="Birth date" property="birthDate" renderFunction="moment,app-custom-rendering#toDate" />
               <datatables:export type="myFormat" cssClass="btn" url="/myExport.myFormat" orientation="portrait"/>
            </datatables:table>

         </div>
      </div>
   </div>
</body>