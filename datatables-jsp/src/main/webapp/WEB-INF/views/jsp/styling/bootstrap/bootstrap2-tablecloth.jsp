<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet" />
<link href="<c:url value="/css/custom.css" />" rel="stylesheet">
<link href="<c:url value="/css/prettify.css" />" rel="stylesheet" />
<link href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" rel="stylesheet" />
<link href="<c:url value="/css/tablecloth.css" />" rel="stylesheet" />
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script src="<c:url value="/js/prettify.js" />"></script>
<script src="<c:url value="/js/ga.js" />"></script>

<div class="row-fluid">
   <div class="span12">
      <datatables:table id="myTableId" cssClass="table table-stats table-striped table-bordered table-condensed" data="${persons}" theme="bootstrap2" dom="<'row-fluid'<'span6'l>t<'row-fluid'<'span6'i><'span6'p>>">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   </div>
</div>