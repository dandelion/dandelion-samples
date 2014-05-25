<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<%-- Make the ugly row in the thead disappear by removing the DataTables' CSS from the bundle --%>
<dandelion:asset cssExcludes="datatables" />

<div class="row row-intro">
   <div class="span12">
      <h3>Bootstrap 3 responsive theme</h3>
      <p>This example shows how easily the Bootstrap framework can be integrated.</p>
      <p>Note that we made the black row in the thead disappear. To do that, we used the
         Dandelion JSP taglib to modify the active scopes by excluding the Datatables' CSS as
         follows:</p>
      <p>
         <code>&lt;dandelion:asset cssExcludes="datatables" /></code>
      </p>
      <p>
         As a consequence, we lost the sorting icons. But you could of course get them back by using
         custom CSS. See the <a
            href="http://dandelion.github.io/datatables/tutorials/styling/themes/bootstrap2.html">documentation</a>
         for more details.
      </p>
   </div>
</div>

<div class="row">
   <div class="span12">
   
      <datatables:table id="myTableId" data="${persons}" cssClass="table table-striped table-bordered" theme="bootstrap3" ext="bootstrap3-responsive">
         <datatables:column title="Id" property="id" data-class="expand" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="Street" property="address.town.name" data-hide="phone,tablet" />
         <datatables:column title="Mail" property="mail" data-hide="phone,tablet" />
      </datatables:table>
   
   </div>
</div>