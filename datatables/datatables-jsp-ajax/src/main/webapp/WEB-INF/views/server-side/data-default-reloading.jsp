<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Data default reloading</h3>
      <p>
         In this sample, you can refresh the table by clicking on the button. By default, a 'click'
         event is bound to element targeted by the passed selector (the link here) and a call to <a
            href="http://datatables.net/plug-ins/api#fnReloadAjax">fnReloadAjax</a> is made.
      </p>
      <p>
         Note that the bundle
         <code>ddl-dt-ajax-reload</code>
         is automatically included in the current request.
      </p>
   </div>
</div>

<div class="row-fluid row-intro">
   <div class="span12 text-center">
      <a id="reload" class="btn btn-large">Click me to refresh the table!</a>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" cssClass="display" url="/ajax/persons" serverSide="true" reloadSelector="#reload">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </div>
</div>