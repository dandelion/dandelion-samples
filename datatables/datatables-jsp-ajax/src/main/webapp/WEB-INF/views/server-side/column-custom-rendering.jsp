<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Custom column rendering</h3>
      <p>Using an AJAX source (with or without server-side processing enabled), the table is
         initialized client-side, when the response is sent back by the server. Columns are also
         built client-side, using Javascript.</p>
      <p>
         That's why an extra scope is added in this page, allowing Dandelion to load the asset
         containing the
         <code>mailify</code>
         function (used to turn a string into a mailto link).
      </p>
      <p>
         Note the use of the special syntax: <code>bundleToInclude#functionName</code>.
      </p>
   </div>
</div>

<datatables:table id="myTableId" cssClass="display" url="/ajax/persons" serverSide="true">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" renderFunction="app-custom-rendering#mailify" />
</datatables:table>
