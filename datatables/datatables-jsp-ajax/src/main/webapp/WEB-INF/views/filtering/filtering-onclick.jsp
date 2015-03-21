<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Filtering on click</h3>
      <p>In the following example, any action in the table (global filtering, paging, individual
         column filtering, sorting) will be performed after a delay of 1000ms.</p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">
   
      <datatables:table id="myTableId" url="/ajax/persons" serverSide="true" dom="l0rtip" filterSelector="#filterButton" filterClearSelector="#filterClearButton" cssClass="display">
         <datatables:column title="Id" name="id" property="id" />
         <datatables:column title="FirstName" name="firstName" property="firstName" />
         <datatables:column title="LastName" name="lastName" property="lastName" />
         <datatables:column title="City" name="city" property="address.town.name" filterable="true" filterCssClass="input-medium" />
         <datatables:column title="Mail" name="mail" property="mail" renderFunction="app-custom-rendering#mailify" />
         <datatables:column title="Company" name="company" property="company.name" filterable="true" filterType="select" filterValues="app-filtering#predefinedValues" />
         <datatables:extraHtml uid="0" cssStyle="float:right;">
            <a id="filterButton" class="btn btn-primary">Apply filters</a>
            <a id="filterClearButton" class="btn btn-inverse">Clear filters</a>
         </datatables:extraHtml>
      </datatables:table>

   </div>
</div>