<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Custom feature</h3>
      <br />
   </div>
</div>

<tab:tab>
   <tab:demo>

      <datatables:table id="myTableId" data="${persons}" features="myCustomFeature">
         <datatables:column title="Id" property="id" />
         <datatables:column title="Firstname" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" sortable="false" />
         <datatables:column title="Mail" property="mail" />
         <datatables:extraConf src="/js/datatables.extraConf.js" />
      </datatables:table>

   </tab:demo>
   <tab:taglib>
      The configuration I want to add :
          
<tab:code>{
    "fnRowCallback" : function( nRow, aData, iDisplayIndex, iDisplayIndexFull ) {
         $('td:eq(0)', nRow).css('color', 'red');
         $('td:eq(1)', nRow).css('color', 'green');
         $('td:eq(2)', nRow).css('color', 'gold');
         $('td:eq(3)', nRow).css('color', 'blue');
         $('td:eq(4)', nRow).css('color', 'darkorange');
         return nRow; 
     }
 }</tab:code>
    <tab:code>
<datatables:table id="myTableId" data="${persons}">
   <datatables:column title="Id" property="id" />
   <datatables:column title="Firstname" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" sortable="false" />
   <datatables:column title="Mail" property="mail" />
   <datatables:extraConf src="/js/datatables.extraConf.js" />
</datatables:table></tab:code>
   </tab:taglib>
</tab:tab>