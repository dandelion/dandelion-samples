<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../common/taglib.jsp" %>

<link rel="stylesheet" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css"/>

<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>

<datatables:table id="myTableId" data="${persons}" theme="jQueryUI" themeOption="peppergrinder">
    <datatables:column title="Id" property="id"/>
    <datatables:column title="FirstName" property="firstName"/>
    <datatables:column title="LastName" property="lastName"/>
    <datatables:column title="City" property="address.town.name"/>
    <datatables:column title="Mail" property="mail"/>
</datatables:table>