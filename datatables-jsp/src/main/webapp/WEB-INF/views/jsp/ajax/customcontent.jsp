<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Custom column content</h3>
      <br />
   </div>
</div>

<script src="<c:url value="/js/customcontent.js" />"></script>
<script>
	function action(data, type, full) {
		console.log(data);
		console.log(type);
		console.log(full);
		return '<a class="btn btn-mini" href="/delete/' + full.id + '">Test</a>';
	}
</script>

<c:url var="datasource" value="/persons1" />

<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" url="${datasource}" serverSide="true" processing="true">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
         <datatables:column title="Action" renderFunction="action" />
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <tab:code>
      </tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <tab:code>
      </tab:code>
   </tab:thymeleaf>
</tab:tab>

