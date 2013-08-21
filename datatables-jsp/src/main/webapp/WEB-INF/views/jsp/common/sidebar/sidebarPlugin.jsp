<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/plugins" var="pluginsUrl" />

<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="display: block; position: static;">
   <li><a href="${pluginsUrl}/colreorder">ColReorder</a></li>
   <li><a href="${pluginsUrl}/scroller">Scroller</a></li>
   <li><a href="${pluginsUrl}/fixedheader">FixedHeader</a></li>
</ul>