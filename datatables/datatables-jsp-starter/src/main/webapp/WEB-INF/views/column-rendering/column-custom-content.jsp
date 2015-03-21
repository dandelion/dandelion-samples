<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Column custom content</h3>
      <p>
         If you wish to display something else than just a property, you just need to write code
         inside the body of the
         <code>&lt;datatables:column&gt;</code>
         tag.
      </p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" data="${persons}" cssClass="display" row="person">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
         <datatables:column title="Actions" sortable="false">
            <a onclick="alert('Person ' + ${person.id} + ' deleted !');" class="btn btn-mini" title="Remove"><i class="icon-trash"></i></a>
            <a onclick="alert('Person ' + ${person.id} + ' edited !');" class="btn btn-mini" title="Edit"><i class="icon-edit"></i></a>
         </datatables:column>
      </datatables:table>

   </div>
</div>