<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>

<html lang="en">

<body>
	<spring:url value="/resources/text.txt" htmlEscape="true" var="springUrl" />
	${springUrl}
	<br />
	<datatables:table id="myTableId" data="${persons}">
		<datatables:column title="Id" property="id" />
		<datatables:column title="FirstName" property="firstName" />
		<datatables:column title="LastName" property="lastName" />
		<datatables:column title="City" property="address.town.name" default="Nothing to display!" />
		<datatables:column title="Mail" property="mail" />
	</datatables:table>
</body>

</html>
