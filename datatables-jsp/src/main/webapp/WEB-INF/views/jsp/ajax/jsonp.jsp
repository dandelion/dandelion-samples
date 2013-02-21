<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<%@ taglib prefix="datatables" uri="http://github.com/datatables4j"%>

<div class="row-fluid">
   <div class="span12">
      <h3>JSONP</h3>
      <h4>Introduction</h4>
      
   </div>
</div>

<tab:tab>
   <tab:demo>

      <datatables:table id="myTableId" url="/persons1" serverSide="true" processing="true" pipelining="true" pipeSize="6">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </tab:demo>
   <tab:taglib>
      <tab:code>
         <datatables:table id="myTableId" url="/persons1" serverSide="true" processing="true" pipelining="true" pipeSize="6">
            <datatables:column title="Id" property="id" />
            <datatables:column title="FirstName" property="firstName" />
            <datatables:column title="LastName" property="lastName" />
            <datatables:column title="City" property="address.town.name" />
            <datatables:column title="Mail" property="mail" />
         </datatables:table>
      </tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <tab:code></tab:code>
   </tab:thymeleaf>
</tab:tab>