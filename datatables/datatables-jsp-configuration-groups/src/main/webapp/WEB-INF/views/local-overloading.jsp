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
                  <h3>Local overloading</h3>
                  <p>This last example shows that you can overload the configuration properties locally,
                     using the appropriate markup.</p>
                  <p>
                     In this example, the
                     <code>feature.dom</code>
                     configuration property is overloaded with the
                     <code>t</code>
                     value, thus hidding all surrounding elements except the table itsef.
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
                     <datatables:prop name="feature.dom" value="t" />
                  </datatables:table>
                  
               </div>
            </div>
            
         </div>
      </div>
   </div>
</body>
</html>