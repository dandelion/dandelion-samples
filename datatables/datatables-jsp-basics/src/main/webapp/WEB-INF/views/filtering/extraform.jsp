<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Filtering using an extra form</h3>
      <br />
   </div>
</div>

<div class="row-fluid">
   <div class="span12">
      <form>
         <fieldset>
            <legend>Search form</legend>
            <div id="firstNameFilter"></div>
            <div id="lastNameFilter"></div>
            <div id="cityFilter"></div>
         </fieldset>
      </form>

   </div>
</div>

<datatables:table id="myTableId" data="${persons}" dom="lrtip" filterPlaceholder="none">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" filterable="true" selector="#firstNameFilter" filterType="select" />
   <datatables:column title="LastName" property="lastName" filterable="true" selector="#lastNameFilter" />
   <datatables:column title="City" property="address.town.name" filterable="true" selector="#cityFilter" />
   <datatables:column title="Mail" property="mail" />
</datatables:table>
