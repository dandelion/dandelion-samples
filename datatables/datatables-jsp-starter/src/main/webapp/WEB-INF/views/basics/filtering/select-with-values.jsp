<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Filtering using drop-down lists of predefined values</h3>
      <p>In this sample, the drop-down list used for filtering has been populated with
         predefined values.</p>
      <p>
         Note that we accessed the Javascript array of predefined values with the special syntax:
         <code>bundleName#javascriptObject</code>
         .
      </p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" cssClass="display">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" filterable="true" filterType="select" filterValues="filtering#myPredefinedValues" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </div>
</div>