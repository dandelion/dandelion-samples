<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Customizing export links: style</h3>
      <br />
   </div>
</div>

<datatables:table id="myFirstTableId" data="${persons}" export="csv,xml">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
   <datatables:export type="csv" cssClass="btn btn-success" cssStyle="myStyle"/>
   <datatables:export type="xml" cssClass="btn btn-info" label="XML export" />
</datatables:table>
