<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Using extra configuration</h3>
      <p>
         As for the
         <code>datatables:extraFile</code>
         tag, extra configuration allows you to add DataTables configuration which are not supported by the tag
         attributes, e.g. <a href="http://datatables.net/release-datatables/examples/advanced_init/column_render.html">custom
            column rendering</a> or <a
            href="http://datatables.net/release-datatables/examples/advanced_init/row_callback.html">specific events</a>.
      </p>
      <p>
         This is almost the same principle as for the
         <code>datatables:extraFile</code>
         but here, the
         <code>datatables:extraConf</code>
         tag allows you to specify the location of a file containing DataTables extra configuration to merge with the
         generated one. So this file must contain a javascript JSON-formatted object.
      </p>
      <p>
         Internally, <strong>DataTables4j</strong> will generate a jQuery AJAX synchronous call to merge the DataTables
         configuration before initializing the table.
      </p>
      <p class="alert alert-info">
         <strong>Info !</strong> <br />The fill can contain non-valid JSON content (e.g.
         <code>function</code>
         ).
      </p>
      <br />
   </div>
</div>

<tab:tab>
   <tab:demo>

      <datatables:table id="myTableId" data="${persons}">
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