<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Basic sorting initialization</h3>
      <p>In this example, the sorting is initialized sequentially, i.e. first in the "FirstName"
         column and then in the "City" column.</p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" cssClass="display">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" sortInitDirection="desc" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" sortInitDirection="asc" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </div>
</div>