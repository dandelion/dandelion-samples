<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>

<!DOCTYPE html>
<html lang="en">
<head>
   <jsp:include page="common/head.jsp"/>
</head>
<body>
   <jsp:include page="common/navbar.jsp"/>

   <div class="container">
      
      <div class="row row-intro">
         <div class="span12">
            <h3>I18n with Struts1</h3>
            <p>In this sample, all titles are read from the configured message source which is
               the Struts one.</p>
            <p>
               Actually, all except the 'City' column which is commented in the
               <code>src/main/resources/ApplicationResources_fr_FR.properties</code>
               file. That's why the default value - comming from the
               <code>src/main/resources/ApplicationResources.properties</code>
               file - is used.
            </p>
         </div>
      </div>
      
      <div class="row">
         <div class="span12">
         
            <datatables:table id="myTableId" data="${persons}">
               <datatables:column titleKey="myTableId.id" property="id" />
               <datatables:column titleKey="myTableId.lastName" property="lastName" />
               <datatables:column titleKey="myTableId.firstName" property="firstName" />
               <datatables:column titleKey="myTableId.city" property="address.town.name" />
               <datatables:column titleKey="myTableId.mail" property="mail" />
            </datatables:table>
            
         </div>
      </div>
   </div>
</body>
</html>