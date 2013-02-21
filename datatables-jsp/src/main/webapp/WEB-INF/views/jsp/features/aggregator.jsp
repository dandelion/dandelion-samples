<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Aggregation</h3>
      <p>In the following example, aggregation has been locally activated.</p>
      <p>Take a look at the generated files to see aggregation in action !</p>
      <br />
   </div>
</div>

<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" data="${persons}" colReorder="true">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
         <datatables:prop name="aggregator.enable" value="true" />
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <tab:code>
<datatables:table id="myTableId" data="${persons}" scroller="true">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
   <datatables:prop name="aggregator.enable" value="true" />
</datatables:table></tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <p class="alert alert-error">
         <strong>:-(</strong><br /> Not supported yet !
      </p>
   </tab:thymeleaf>
</tab:tab>