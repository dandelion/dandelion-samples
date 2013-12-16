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
            <h3>DOM source / Customizing export content</h3>
            <p>
               Blabla
            </p>
         </div>
      </div>
      
      <div class="row-fluid">
         <div class="span12">

            <datatables:table id="myTableId" data="${persons}" row="person" export="xlsx">
               <datatables:column title="Id" property="id" />
               <datatables:column title="FirstName" property="firstName" />
               <datatables:column title="LastName" property="lastName" />
               <datatables:column title="City" property="address.town.name" />
               <datatables:column title="Mail" display="html">
                  <a href="mailto:${person.mail}">${person.mail}</a>
               </datatables:column>
               <datatables:column title="Mail" property="mail" display="xlsx" />
               <datatables:export type="xlsx" autoSize="true" cssClass="btn"/>
            </datatables:table>

         </div>
      </div>
   </div>
</body>