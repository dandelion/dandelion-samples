<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Pipelining data for paging</h3>
      <p>In this sample, data are pipelined. By defalut, a new AJAX call is performed every 5
         paging hit.</p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" cssClass="display" url="/ajax/persons" serverSide="true" pipelining="true">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </div>
</div>