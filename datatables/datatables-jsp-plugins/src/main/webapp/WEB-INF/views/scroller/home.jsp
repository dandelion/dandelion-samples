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
                  <h3>Scroller</h3>
                  <br />
               </div>
            </div>
            
            <datatables:table id="myTableId" data="${persons}" ext="scroller" scrollY="300px">
               <datatables:column title="Id" property="id" />
               <datatables:column title="FirstName" property="firstName" />
               <datatables:column title="LastName" property="lastName" />
               <datatables:column title="City" property="address.town.name" />
               <datatables:column title="Mail" property="mail" />
            </datatables:table>
            
         </div>
      </div>
      <hr />
      <footer>
         Footer
      </footer>
   </div>
</body>
</html>