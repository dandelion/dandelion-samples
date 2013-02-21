<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<c:url value="/plugins" var="plugins" />

<div class="row-fluid">
   <div class="span2">
      <div class="well sidebar-nav">
         <ul class="nav nav-list">
            <li class="nav-header">Plugins</li>
            <li class="<tiles:getAsString name="navHome" />"><a href="${plugins}/home">Home</a></li>
            <li class="<tiles:getAsString name="navFixedHeader" />"><a href="${plugins}/fixedheader">FixedHeader</a></li>
            <li class="<tiles:getAsString name="navScroller" />"><a href="${plugins}/scroller">Scroller</a></li>
            <li class="<tiles:getAsString name="navColReorder" />"><a href="${plugins}/colreorder">ColReorder</a></li>
            <%--<li class="<tiles:getAsString name="navTableTools" />"><a href="${plugins}/tabletools">TableTools</a></li> --%>
            <li class="<tiles:getAsString name="navCombo" />"><a href="${plugins}/combo">Combo</a></li>
            <li class="<tiles:getAsString name="navComboAggreg" />"><a href="${plugins}/comboaggreg">Combo & aggregation</a></li>
            <li class="<tiles:getAsString name="navComboAggregCompress" />"><a href="${plugins}/comboaggregcompress">Combo, aggregation & compression</a></li>
         </ul>
      </div>
   </div>
   <div class="span10">
      <tiles:insertAttribute name="pluginContent" />
   </div>   
</div>