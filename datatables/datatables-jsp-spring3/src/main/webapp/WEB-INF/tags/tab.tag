<%@ tag language="java" pageEncoding="UTF-8" import="java.util.Random" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="rand" scope="request"><%= new Random().nextInt() %></c:set>
<c:set var="jspBase" value="src/main/webapp/WEB-INF/jsp" />

<jsp:doBody />

<div class="row-fluid">
   <div class="span12">
      <ul class="nav nav-tabs">
         <li class="active"><a href="#tabDemo${rand}" data-toggle="tab">Demo</a></li>
         <li><a href="#tabTaglib${rand}" data-toggle="tab">Using JSP</a></li>
         <li><a href="#tabThymeleaf${rand}" data-toggle="tab">Using Thymeleaf</a></li>
      </ul>
      <div class="tab-content">
         <div class="tab-pane active" id="tabDemo${rand}">
            <c:out value="${dt4j_demo}" escapeXml="false"/>
         </div>
         <div class="tab-pane" id="tabTaglib${rand}">
            <c:out value="${dt4j_taglib}" escapeXml="false" />
         </div>
         <div class="tab-pane" id="tabThymeleaf${rand}">
            <c:out value="${dt4j_thymeleaf}" escapeXml="false" />
         </div>
      </div>
   </div>
</div>