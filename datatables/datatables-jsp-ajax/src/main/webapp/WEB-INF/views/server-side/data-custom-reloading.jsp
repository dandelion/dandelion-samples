<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Data custom reloading</h3>
      <p>
         In this sample, the reloading action is delegated to the end-user, by passing the name of a
         function that will be called to perform the reloading. So it's up to end-users to make use
         of <a href="http://datatables.net/plug-ins/api#fnReloadAjax">fnReloadAjax</a>.
      </p>
      <p>
         Note that the scope
         <code>ddl-dt-ajax-reload</code>
         is still automatically added to the current request.
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

      <datatables:table id="myTableId" cssClass="display" url="/ajax/persons" serverSide="true" reloadSelector="#reload" reloadFunction="app-ajax#customReload">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </div>
</div>