<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/advanced" var="advancedUrl" />

<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="display: block; position: static;">
   <li><a href="${advancedUrl}/rowid">Row id</a></li>
   <li><a href="${advancedUrl}/i18n">I18n with Spring</a></li>
   <li><a href="${advancedUrl}/extrafile">Using extra file</a></li>
   <li><a href="${advancedUrl}/extraconf">Using extra conf</a></li>
   <li><a href="${advancedUrl}/override">Override default configuration</a></li>
   <li><a href="${advancedUrl}/compressor">Using asset compression</a></li>
   <li><a href="${advancedUrl}/aggregator">Using asset aggregation</a></li>
</ul>
