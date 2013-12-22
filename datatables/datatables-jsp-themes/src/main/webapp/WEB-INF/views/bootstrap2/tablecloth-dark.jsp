<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Bootstrap 2 theme - Tablecloth dark</h3>
      <p>
         Some themes designed by <a href="https://github.com/bwsewell">Brian Sewell</a> and developed
         for <a href="https://github.com/bwsewell/tablecloth">Tablecloth</a> are also supported.
      </p>
      <p>
         Just fill the
         <code>themeOption</code>
         attribute with <strong>tablecloth</strong> and add one of the following CSS class to the
         table: <strong>table-dark</strong>, <strong>table-paper</strong> or <strong>table-stats</strong>.
      </p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">
   
      <datatables:table id="myTableId" cssClass="table table-dark table-striped table-bordered table-condensed" data="${persons}" theme="bootstrap2" themeOption="tablecloth">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
      
   </div>
</div>