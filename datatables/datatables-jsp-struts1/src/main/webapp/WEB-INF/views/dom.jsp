<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="dandelion" uri="http://github.com/dandelion" %>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>

<!DOCTYPE html>
<html lang="en">
<head>
   <jsp:include page="common/head.jsp"/>
</head>
<body>
   <jsp:include page="common/navbar.jsp"/>

   <div class="container">
      
      <div class="row">
         <div class="span12">
            <datatables:table id="myTableId" data="${persons}">
               <datatables:column titleKey="id" property="id" />
               <datatables:column title="LastName" property="lastName" />
               <datatables:column title="FirstName" property="firstName" />
               <datatables:column title="City" property="address.town.name" />
               <datatables:column title="Mail" property="mail" />
            </datatables:table>
         </div>
      </div>

      <hr />
      <footer>
         <jsp:include page="common/footer.jsp"/>
      </footer>
   </div>
</body>
</html>