<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<tiles:insertTemplate template="/WEB-INF/views/common/layout.jsp">
   <tiles:putAttribute name="content" value="/WEB-INF/views/overview.jsp" />
</tiles:insertTemplate>
