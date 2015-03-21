<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Default configuration</h3>
      <p>
         The following table uses the default configuration.
      </p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" cssClass="display">
         <datatables:column title="Id" property="id" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
         <datatables:column title="Salary" property="salary" />
         <datatables:column title="Birthdate" property="birthDate" format="{0,date,dd-MM-yyyy}" />
         <datatables:column title="Company" property="company.name" />
      </datatables:table>

   </div>
</div>