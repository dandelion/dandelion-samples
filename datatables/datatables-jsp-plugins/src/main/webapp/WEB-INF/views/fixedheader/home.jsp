<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>

<!DOCTYPE html>
<html lang="en">
<head>
   <jsp:include page="../common/head.jsp"/>
</head>
<body>
   <jsp:include page="../common/navbar.jsp"/>

   <div class="container">
      <div class="row-fluid">
         <div class="span12" style="min-height: 550px;">
            
            <div class="row-fluid">
               <div class="span12">
                  <h3>FixedHeader</h3>
                  <br />
               </div>
            </div>
            
            <datatables:table id="myTableId" data="${persons}" ext="fixedHeader" offsetTop="40">
               <datatables:column title="Id" property="id" />
               <datatables:column title="FirstName" property="firstName" />
               <datatables:column title="LastName" property="lastName" />
               <datatables:column title="City" property="address.town.name" />
               <datatables:column title="Mail" property="mail" />
            </datatables:table>
            
            <div style="height: 800px;">&nbsp;</div>
            
         </div>
      </div>
   </div>
</body>
</html>