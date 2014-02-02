<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Extra HTML</h3>
      <p>
         Thanks to the
         <code>&lt;datatables:extraHtml&gt;</code>
         tag and the
         <code>dom</code>
         table attribute, two more controls have been easily added to the table bellow.
      </p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">
   
      <datatables:table id="myTableId" data="${persons}" dom="l10frtip" row="person">
         <datatables:column title="Id" property="id" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
         <datatables:column title="Salary" property="salary" />
         <datatables:column title="Birthdate" property="birthDate" format="{0,date,dd-MM-yyyy}" />
         <datatables:column title="Company" property="company.name" />
         <datatables:extraHtml uid="0" cssStyle="float:right; margin-left: 5px;">
            <a class="btn" onclick="alert('Click!');">My custom link</a>
         </datatables:extraHtml>
         <datatables:extraHtml uid="1" cssStyle="float:right; margin-left: 5px;">
            <a class="btn" onclick="alert('Click!');">My other custom link</a>
         </datatables:extraHtml>
      </datatables:table>
      
   </div>
</div>


