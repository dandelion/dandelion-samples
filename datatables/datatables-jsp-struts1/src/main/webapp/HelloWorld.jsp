<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
</head>
<head>
</head>
<body>
   <h1>
      <bean:write name="helloWorldForm" property="message" />
   </h1>
   <p>
   <datatables:table id="myTableId" data="${persons}" cdn="true">
      <datatables:column titleKey="id" property="id" />
      <datatables:column title="LastName" property="lastName" />
      <datatables:column title="FirstName" property="firstName" />
      <datatables:column title="City" property="address.town.name" />
      <datatables:column title="Mail" property="mail" />
   </datatables:table>
</p>
</body>
</html>