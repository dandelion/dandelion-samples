<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<!-- Update the current scope with extra functions needed for rendering -->
<dandelion:assets scopes="bootstrap-datepicker" />

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Filtering on click</h3>
      <p>In the following example, any action in the table (global filtering, paging, individual
         column filtering, sorting) will be performed after a delay of 1000ms.</p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">
   
      <datatables:table id="myTableId" url="/persons" serverSide="true" processing="true" dom="l0rtip" filterSelector="#filterButton" filterClearSelector="#filterClearButton">
         <datatables:column title="Id" name="id" property="id" />
         <datatables:column title="FirstName" name="firstName" property="firstName" />
         <datatables:column title="LastName" name="lastName" property="lastName" />
         <datatables:column title="City" name="city" property="address.town.name" filterable="true" filterCssClass="input-medium" />
         <datatables:column title="Mail" name="mail" property="mail" renderFunction="ajax#mailify" />
         <datatables:column title="Salary" name="salary" property="salary" renderFunction="custom-rendering#toCurrency" filterable="true" filterType="number_range" filterCssClass="input-small" />
         <datatables:column title="BirthDate" name="birthDate" property="birthDate" filterable="true" filterType="date_range" filterDateFormat="yyyy-mm-dd" renderFunction="custom-rendering,moment#toDate" filterCssClass="input-small"/>
         <datatables:column title="Company" name="company" property="company.name" filterable="true" filterCssClass="input-small" filterType="select" filterValues="filtering#predefinedValues" />
         <datatables:extraHtml uid="0" cssStyle="float:right;">
            <a id="filterButton" value="Filter" class="btn btn-primary">Apply filters</a>
            <a id="filterClearButton" value="Filter" class="btn btn-inverse">Clear filters</a>
         </datatables:extraHtml>
      </datatables:table>

   </div>
</div>