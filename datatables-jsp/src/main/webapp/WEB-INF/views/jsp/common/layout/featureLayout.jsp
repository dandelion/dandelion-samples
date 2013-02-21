<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<c:url value="/features" var="featuresUrl" />

<div class="row-fluid">
   <div class="span2">
      <div class="well sidebar-nav">
         <ul class="nav nav-list">
            <li class="nav-header">Features</li>
            <li class="<tiles:getAsString name="navHome" />"><a href="${featuresUrl}/home">Home</a></li>
            <li class="<tiles:getAsString name="navCompressor" />"><a href="${featuresUrl}/compressor">Compressor</a></li>
            <li class="<tiles:getAsString name="navAggregator" />"><a href="${featuresUrl}/aggregator">Aggregator</a></li>
            <li class="<tiles:getAsString name="navExport" />"><a href="${featuresUrl}/export">Export</a></li>
         </ul>
      </div>
   </div>
   <div class="span10">
      <tiles:insertAttribute name="featureContent" />
   </div>   
</div>