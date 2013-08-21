<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>
<div class="row-fluid">
   <div class="span12">
      <h3>Export using DOM sources</h3>
      <br />
   </div>
</div>

<datatables:table id="myFirstTableId" data="${persons}" row="person" export="csv,xml,xls,pdf">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Birthdate" property="birthDate" format="{0,date,dd/MM/yyyy}" sortType="natural" />
   <datatables:column title="Mail">
      <a href="mailto:${person.mail}">${person.mail}</a>
   </datatables:column>
<%--    <datatables:column title="Mail" display="pdf"> --%>
<%--       ${person.mail} --%>
<%--    </datatables:column> --%>
   <datatables:export type="csv" cssClass="btn" url="/demo-datatables-jsp/export.csv" />
   <datatables:export type="xml" cssClass="btn" url="/demo-datatables-jsp/export.xml" />
   <datatables:export type="xls" cssClass="btn" url="/demo-datatables-jsp/export.xls" />
   <datatables:export type="pdf" cssClass="btn" />
</datatables:table>
