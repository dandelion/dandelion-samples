<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Basic styling</h3>
      <p>In this example:</p>
      <ul>
         <li>The <strong>City</strong> column is centered using inlined CSS <code>style="text-align:center;"</code>
            , which update the "th" tag of the column.
         </li>
         <li>All the body cells of the <strong>Mail</strong> column are centered using <code>style="text-align:center;"</code>
            whereas a CSS class has been applied on the "th" cell using <code>class="myCustomClass"</code>.
         </li>
      </ul>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">
   
      <datatables:table id="myTableId" data="${persons}" cssClass="display">
         <datatables:column title="Id" property="id" sortable="false" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" cssStyle="text-align:center;" />
         <datatables:column title="Mail" property="mail" cssClass="myCustomClass" cssCellStyle="text-align:center;" />
      </datatables:table>
      
   </div>
</div>