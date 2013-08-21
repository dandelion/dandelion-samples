<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/ajax" var="ajaxUrl" />

<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="display: block; position: static;">
   <li><a href="${ajaxUrl}/ajaxsource">AJAX source</a></li>
   <li><a href="${ajaxUrl}/nullvalue">Handling null/default values</a></li>
   <li><a href="${ajaxUrl}/serverside">Server-side processing</a></li>
   <li><a href="${ajaxUrl}/springmvc">Spring MVC integration</a></li>
   <li><a href="${ajaxUrl}/pipeliningdata">Pipelining data</a></li>
   <li><a href="${ajaxUrl}/customrendering">Custom column rendering</a></li>
</ul>