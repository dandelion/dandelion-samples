<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>
<div class="row-fluid">
   <div class="span12">
      <h3>Horizontal and vertical scrolling</h3>
      <br />
   </div>
</div>

<div class="row-fluid row-intro">
   <div class="span12">
   
      <datatables:table id="myTableId" data="${persons}" scrollX="120%" scrollY="200px" scrollXInner="110%" paginate="false">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
         <datatables:column title="Birthdate" property="birthDate" format="{0,date,dd/MM/yyyy}" />
         <datatables:column title="Salary" property="salary" />
         <datatables:column title="Company" property="company.name" />
      </datatables:table>
   </div>
</div>
