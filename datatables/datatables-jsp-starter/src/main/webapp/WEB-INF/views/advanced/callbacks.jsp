<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Using callbacks</h3>
      <p>
         The following example shows how to use DataTables callbacks with Dandelion-Datatables.
      </p>
      <p>
        Two callbacks are used: 
      </p>
      <ul>
         <li>INFO: in order to override the default information box (at bottom left)</li>
         <li>CREATEDROW: all the "Mail" column is turned in bold</li>
      </ul>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" cssClass="display">
         <datatables:column title="Id" property="id" />
         <datatables:column title="Firstname" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
         <datatables:callback type="info" function="callbacks#callbackInfo" />
         <datatables:callback type="createdRow" function="callbacks#callbackCreatedRow" />
      </datatables:table>

   </div>
</div>