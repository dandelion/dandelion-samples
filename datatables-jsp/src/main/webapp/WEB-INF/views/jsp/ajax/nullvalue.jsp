<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Handling null/default values</h3>
      <p>
         Using JSP with AJAX sources, null values are handled in the same way than for DOM sources. By default, an empty
         string will be displayed. You can also use the
         <code>default</code>
         column attribute to replace the empty string by any string you want.
      </p>
      <p>
         Using Thymeleaf, this is quite similar. Just use the
         <code>dt:default</code>
         TH attribute to override the default empty string.
      </p>
      <br />
   </div>
</div>

<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" url="/persons">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" default="My default value !" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <tab:code>
<datatables:table id="myTableId" url="/persons">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" default="My default value !" />
   <datatables:column title="Mail" property="mail" />
</datatables:table></tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <tab:code>
<table id="myTableId" dt:table="true" dt:url="/persons">
   <thead>
      <tr>
         <th dt:property="id">Id</th>
         <th dt:property="firstName">Firstname</th>
         <th dt:property="lastName">Lastname</th>
         <th dt:property="address.town.name" dt:default="My default value !">City</th>
         <th dt:property="mail">Mail</th>
      </tr>
   </thead>
</table></tab:code>
   </tab:thymeleaf>
</tab:tab>