<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Sorting initialization with custom order</h3>
      <p>In this example, the sorting is initialized first in the "City" column, then in the
         "FirstName" column.</p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" cssClass="display">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" sortInitDirection="desc" sortInitOrder="1" />
         <datatables:column title="LastName" property="lastName" sortInitDirection="asc" sortInitOrder="0" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </div>
</div>