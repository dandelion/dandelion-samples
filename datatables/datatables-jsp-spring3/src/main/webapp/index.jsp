<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<tiles:insertTemplate template="/WEB-INF/views/jsp/common/layout/startLayout.jsp">
   <tiles:putAttribute name="tabBasics" value="" cascade="true" />
   <tiles:putAttribute name="tabAdvanced" value="" cascade="true" />
   <tiles:putAttribute name="tabAjax" value="" cascade="true" />
   <tiles:putAttribute name="tabExport" value="" cascade="true" />
   <tiles:putAttribute name="tabStyling" value="" cascade="true" />
   <tiles:putAttribute name="tabPlugins" value="" cascade="true" />
   <tiles:putAttribute name="title" value="Dandelion-DataTables live JSP demo" />
   <tiles:putAttribute name="navbar" value="/WEB-INF/views/jsp/common/navbar.jsp" />
   <tiles:putAttribute name="content" value="/WEB-INF/views/jsp/overview.jsp" />
   <tiles:putAttribute name="assets" value="/WEB-INF/views/jsp/common/assets.jsp" />
   <tiles:putAttribute name="footer" value="/WEB-INF/views/jsp/common/footer.jsp" />
</tiles:insertTemplate>
