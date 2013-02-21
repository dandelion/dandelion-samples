<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<div class="row-fluid">
   <div class="span12">
      <h3>Table width</h3>
      <p>
      You can enable or disable automatic column width calculation using the <code>autoWidth</code> table tag attribute.
      </p>
      <hr />
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" autoWidth="false">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
      
   </div>
</div>

<%-- Documentation --%>
<doc:doc source="basic/autowidth.jsp" doc="basic.autowidth.html" />