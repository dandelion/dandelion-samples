<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Filtering using different filter placeholders</h3>
      <p>By default, as soon as a column is filterable, filtering elements will be added in the
         tfoot but you can configure the filter placeholder.</p>
      <p>In this example, the filtering elements are added after the first header row.</p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">
   
      <datatables:table id="myTableId" data="${persons}" cssClass="display" filterPlaceholder="header">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" filterable="true" />
         <datatables:column title="LastName" property="lastName" filterable="true" filterType="select" />
         <datatables:column title="City" property="address.town.name" filterable="true" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   
   </div>
</div>
