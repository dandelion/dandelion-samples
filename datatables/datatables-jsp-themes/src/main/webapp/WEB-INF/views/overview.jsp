<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/basics" var="basics" />
<c:url value="/advanced" var="advanced" />
<c:url value="/ajax" var="ajax" />
<c:url value="/export" var="export" />
<c:url value="/styling" var="styling" />
<c:url value="/features" var="features" />
<c:url value="/plugins" var="plugins" />

<div class="row-fluid">
   <div class="span12">
<!--       <i class="icon-leaf icon-3x"></i> -->
      <h3>In this sample</h3>
      <p>Plenty of basic examples: sorting, filtering, paging, how to use implicit objects, CDN option and more!</p>
      <a class="btn" href="${basics}/home">View details »</a>
   </div>
</div>