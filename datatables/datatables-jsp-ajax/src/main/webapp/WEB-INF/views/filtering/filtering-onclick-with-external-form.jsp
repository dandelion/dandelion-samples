<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Filtering on click with an external form</h3>
      <p>In the following example, the filtering form is totally externalized and all filtering
         elements (except the global search field) react to the "Apply filters" and "Clear filters"
         buttons.</p>
      <p>
         Note that Dandelion-Datatables makes use of the <a
            href="http://datatables.net/plug-ins/api">fnMultiFilter</a> function from the DataTables
         API to perform filtering on multiple columns in just one request.
      </p>
      <p>Finally, note that the "Clear filters" buttons reinitializes both table and filtering
         elements.</p>
   </div>
</div>

<div class="row-fluid well">
   <div class="span6">
      <div id="firstNameFilter"></div>
      <div id="lastNameFilter"></div>
      <div id="cityFilter"></div>
      <div id="companyFilter"></div>
      Firstname: <div id="salaryFilter"><input type="text" /></div>
      Lastname: <div id="birthDateFilter"><input type="text" /></div>
   </div>
   <div class="span6">
      <a id="filterButton" class="btn btn-large btn-primary">Apply filters</a> 
      <a id="filterClearButton" class="btn btn-large btn-inverse">Clear filters</a>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" url="/ajax/persons" serverSide="true" filterPlaceholder="none" filterSelector="#filterButton" filterClearSelector="#filterClearButton" cssClass="display">
         <datatables:column title="Id" name="id" property="id" />
         <datatables:column title="FirstName" name="firstName" property="firstName" selector="firstNameFilter" />
         <datatables:column title="LastName" name="lastName" property="lastName" selector="lastNameFilter" />
         <datatables:column title="City" name="city" property="address.town.name" filterable="true" filterCssClass="input-medium" selector="cityFilter" />
         <datatables:column title="Mail" name="mail" property="mail" renderFunction="app-custom-rendering#mailify" />
         <datatables:column title="Company" name="company" property="company.name" filterable="true" filterType="select" filterValues="app-filtering#predefinedValues" selector="companyFilter" />
      </datatables:table>
            
   </div>
</div>