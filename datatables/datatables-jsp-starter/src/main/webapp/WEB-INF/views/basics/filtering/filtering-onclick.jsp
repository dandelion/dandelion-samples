<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Filtering onclick</h3>
      <p>The default behaviour of DataTables is to filter on keypress. But it this sample you
         can apply the filters on a button click!</p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" cssClass="display" dom="l0rtip" filterSelector="#filterButton" filterClearSelector="#filterClearButton" filterPlaceholder="header">
         <datatables:column title="Id" name="id" property="id" />
         <datatables:column title="FirstName" name="firstName" property="firstName" filterable="true" filterType="select" />
         <datatables:column title="LastName" name="lastName" property="lastName" filterable="true" />
         <datatables:column title="City" name="city" property="address.town.name" filterable="true" filterCssClass="input-medium" />
         <datatables:column title="Mail" name="mail" property="mail" />
         <datatables:extraHtml uid="0" cssStyle="float:right;">
            <a id="filterButton" class="btn btn-primary">Apply filters</a>
            <a id="filterClearButton" class="btn btn-inverse">Clear filters</a>
         </datatables:extraHtml>
      </datatables:table>

   </div>
</div>