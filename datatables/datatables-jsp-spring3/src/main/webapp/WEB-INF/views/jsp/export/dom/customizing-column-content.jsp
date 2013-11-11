<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>DOM source / customizing column content content</h3>
      <br />
   </div>
</div>

<datatables:table id="myTableId" data="${persons}" row="person" export="csv,xls">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" display="html">
      <a href="mailto:${person.mail}">${person.mail}</a>
   </datatables:column>
   <datatables:column title="Mail" property="mail" display="csv,xls" />
   <datatables:export type="csv" cssClass="btn" />
   <datatables:export type="xls" cssClass="btn" />
</datatables:table>
