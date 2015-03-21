<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<!-- Update the current bundle graph with extra functions needed for rendering -->
<dandelion:bundle includes="custom-rendering,custom-ajax-request" />

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Custom AJAX request</h3>
      <p>This example show how to customize the AJAX call made against the server to populate
         the table. A message shoud appear once the table redrawed.</p>
      <p>
         Note the use of the special syntax: <code>bundleToLoad#functionName</code>.
      </p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" cssClass="display" url="/ajax/persons-via-post" serverSide="true" ajaxParams="app-ajax#myCustomParams">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </div>
</div>