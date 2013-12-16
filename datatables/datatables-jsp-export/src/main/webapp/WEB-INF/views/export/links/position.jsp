<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Customizing export links: positions</h3>
      <br />
   </div>
</div>

<datatables:table id="myTableId" data="${persons}" export="csv,xml" exportLinks="top_right,bottom_right">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
   <datatables:export type="csv" cssClass="btn btn-info" />
   <datatables:export type="xml" cssClass="btn btn-info" />
</datatables:table>
