<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables"%>

<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="common/head.jsp" />
</head>
<body>
   <jsp:include page="common/navbar.jsp" />

   <div class="container">
      <div class="row-fluid">
         <div class="span12" style="min-height: 550px;">

            <div class="row-fluid row-intro">
               <div class="span12">
                  <h3>Global group</h3>
                  <p>
                     This example shows a table configured with the
                     <code>datatables.properties</code>
                     file only. No other table configuration is set using the JSP taglib.
                  </p>
                  <p>
                     Note in the source code that no attribute is required since the
                     <code>global</code>
                     group is always active in all tables.
                  </p>
               </div>
            </div>

            <div class="row-fluid">
               <div class="span12">
               
                  <datatables:table id="myTableId" data="${persons}">
                     <datatables:column title="Id" property="id" />
                     <datatables:column title="FirstName" property="firstName" />
                     <datatables:column title="LastName" property="lastName" />
                     <datatables:column title="City" property="address.town.name" />
                     <datatables:column title="Mail" property="mail" />
                  </datatables:table>
                  
               </div>
            </div>
            
         </div>
      </div>
   </div>
</body>
</html>