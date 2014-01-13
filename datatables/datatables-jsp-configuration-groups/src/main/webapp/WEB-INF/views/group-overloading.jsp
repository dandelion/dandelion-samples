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
                  <h3>Group overloading</h3>
                  <p>
                     In this example, no local configuration is used. All tables use a different configuration
                     group defined in the
                     <code>datatables.properties</code>
                     file.
                  </p>
                  <p>
                     Note that a group always overloads the
                     <code>global</code>
                     group, that's why all table use the Bootstrap2 theme.
                  </p>
               </div>
            </div>

            <div class="row-fluid">
               <div class="span12">
               
                  <datatables:table id="myTableId" data="${persons}" confGroup="group1">
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