<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Styling pagination: Bootstrap full numbers</h3>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="pagingBsFullNumbers" data="${persons}" cssClass="display" pagingType="bootstrap_full_numbers">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </div>
</div>