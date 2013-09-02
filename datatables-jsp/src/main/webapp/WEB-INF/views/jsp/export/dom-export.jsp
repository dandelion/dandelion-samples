<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Export using DOM sources</h3>
      <br />
   </div>
</div>

<datatables:table id="myTableId" data="${persons}" row="person" export="csv,xml,xls,pdf">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Birthdate" property="birthDate" format="{0,date,dd/MM/yyyy}" sortType="natural" />
   <datatables:column title="Mail" display="html">
      <a href="mailto:${person.mail}">${person.mail}</a>
   </datatables:column>
   <datatables:column title="Mail" property="mail" display="csv,xml,xls,pdf" />
</datatables:table>
