<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>
<div class="row-fluid">
   <div class="span12">
      <h3>Extra HTML</h3>
      <br />
   </div>
</div>

<div class="row-fluid">
   <div class="span12">
      <datatables:table id="myTableId" data="${persons}" dom="0lfrtip0" row="person">
         <datatables:column title="Id" property="id" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
         <datatables:column title="Pocket money" property="pocketMoney" />
         <datatables:column title="Birthdate" property="birthDate" format="{0,date,dd-MM-yyyy}" />
         <datatables:column title="Company" property="company.name" />
         <datatables:extraHtml uid="0" cssStyle="float:right;">
            <a class="btn">Mon lien custom!</a>
         </datatables:extraHtml>
      </datatables:table>
   </div>
</div>


