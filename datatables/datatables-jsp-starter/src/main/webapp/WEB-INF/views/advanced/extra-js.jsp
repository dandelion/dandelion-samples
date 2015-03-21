<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Using extra Javascript</h3>
      <p>
         Thanks to the
         <code>&lt;datatables:extraJs&gt;</code>
         , all assets from the bundle
         <code>filtering</code>
         have been added to the
         <code>beforeall</code>
         placeholder, i.e. before any generated configuration.
      </p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" cssClass="display">
         <datatables:column title="Id" property="id" />
         <datatables:column title="Firstname" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" filterable="true" filterType="select" filterValues="myPredefinedValues" />
         <datatables:column title="Mail" property="mail" />
         <datatables:extraJs bundles="filtering" placeholder="before_all" />
      </datatables:table>

   </div>
</div>