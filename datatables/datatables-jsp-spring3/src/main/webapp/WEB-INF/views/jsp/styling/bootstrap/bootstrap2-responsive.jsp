<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<%-- Make the ugly row in the thead disappear --%>
<dandelion:assets excludedAssets="datatables-css" />

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Bootstrap 2 responsive theme</h3>
      <p>
         This sample uses the <strong>bootstrap2-responsive</strong> extension to activate a
         responsive behaviour based on the
         <a href="https://github.com/Comanche/datatables-responsive">datatables-responsive</a>
         helper authored by <a href="https://github.com/Comanche">Comanche</a>.
      </p>
      <p>
         Try to resize your window to see it in action!
      </p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">
      <datatables:table id="myTableId" cssClass="table table-striped table-bordered table-condensed" data="${persons}" ext="bootstrap2,bootstrap2-responsive">
         <datatables:column title="Id" property="id" data-class="expand" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.town.name" />
         <datatables:column title="Mail" property="mail" data-hide="phone,tablet" />
      </datatables:table>
   </div>
</div>