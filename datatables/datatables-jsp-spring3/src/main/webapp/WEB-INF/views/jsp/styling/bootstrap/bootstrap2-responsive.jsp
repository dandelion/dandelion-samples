<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<dandelion:assets scopes="bootstrap" />

<div class="row-fluid">
   <div class="span12">
      <h3>Bootstrap 2 responsive theme</h3>
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