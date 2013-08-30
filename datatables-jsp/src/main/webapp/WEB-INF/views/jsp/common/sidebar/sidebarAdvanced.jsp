<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/advanced" var="advancedUrl" />

<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="display: block; position: static;">
   <li><a href="${advancedUrl}/rowid">Row id</a></li>
   <li><a href="${advancedUrl}/i18n">I18n with Spring</a></li>
   <li><a href="${advancedUrl}/extrafile">Extra Javascript files</a></li>
   <li><a href="${advancedUrl}/extraconf">Extra DataTables configuration</a></li>
   <li><a href="${advancedUrl}/callbacks">Using callbacks</a></li>
   <li><a href="${advancedUrl}/override">Overriding default configuration</a></li>
   <li><a href="${advancedUrl}/dynamic-attributes">Dynamic attributes</a></li>
   <li><a href="${advancedUrl}/configuration-group">Configuration group</a></li>
   <li><a href="${advancedUrl}/custom-extension">Custom extension</a></li>
   <li><a href="${advancedUrl}/compressor">Using asset compression</a></li>
   <li><a href="${advancedUrl}/aggregator">Using asset aggregation</a></li>
</ul>
