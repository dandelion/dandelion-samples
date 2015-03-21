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
            <h3>Links style</h3>
            <p>
               You can move apply some CSS on export using the
               <code>cssStyle</code>
               and
               <code>cssClass</code>
               table attributes.
            </p>
         </div>
      </div>
      
      <div class="row-fluid">
         <div class="span12">

            <datatables:table id="myTableId" url="/persons" serverSide="true" processing="true" export="pdf,xls">
               <datatables:column title="Id" property="id" />
               <datatables:column title="FirstName" property="firstName" />
               <datatables:column title="LastName" property="lastName" />
               <datatables:column title="City" property="address.town.name" />
               <datatables:column title="Mail" property="mail" />
               <datatables:column title="Birth date" property="birthDate" renderFunction="moment,app-custom-rendering#toDate" />
               <datatables:export type="pdf" cssClass="btn btn-info" url="/export.pdf" />
               <datatables:export type="xls" cssClass="btn btn-success" url="/export.xls" />
            </datatables:table>

         </div>
      </div>
   </div>
</body>