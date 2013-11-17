<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Bootstrap 2 theme - Tablecloth dark</h3>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">
      <datatables:table id="myTableId" cssClass="table table-dark table-striped table-bordered table-condensed" data="${persons}" ext="bootstrap2" themeOption="tablecloth">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   </div>
</div>