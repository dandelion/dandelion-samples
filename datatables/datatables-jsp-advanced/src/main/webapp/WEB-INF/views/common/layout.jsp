<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="dandelion" uri="http://github.com/dandelion" %>

<dandelion:assets scopes="sample,bootstrap2" />

<c:url value="/" var="home" />
<c:url value="/table-decoration" var="tableDecorationUrl" />
<c:url value="/row-id" var="rowIdUrl" />
<c:url value="/callbacks" var="callbackUrl" />
<c:url value="/dynamic-attributes" var="dynamicAttributesUrl" />
<c:url value="/configuration" var="configurationUrl" />
<c:url value="/extra" var="extraUrl" />
                  
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>datatables-jsp-advanced</title>
</head>
<body>
   
   <a href="https://github.com/dandelion/dandelion-samples">
      <img style="position: fixed; top: 0; left: 0; border: 0; z-index: 1500;" src="https://s3.amazonaws.com/github/ribbons/forkme_left_green_007200.png" alt="Fork me on GitHub"/>
   </a>
   <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
         <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse">
               <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
            </a> 
            <a class="brand" href="${home}">datatables-jsp-advanced</a>
            <div class="nav-collapse collapse navbar-responsive-collapse">
               <ul class="nav">
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Table decoration <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${tableDecorationUrl}/enable-disable-sorting">Enable/disable sorting</a></li>
                        <li><a href="${tableDecorationUrl}/extra-html">Extra HTML</a></li>
                     </ul>
                  </li>
                  <li><a href="${rowIdUrl}">Row ID</a></li>
                  <li><a href="${callbackUrl}">Callbacks</a></li>
                  <li><a href="${dynamicAttributesUrl}">Dynamic attributes</a></li>
                  <li><a href="${configurationUrl}">Configuration</a></li>
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Extra <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${extraUrl}/extra-file">Extra Javascript file</a></li>
                        <li><a href="${extraUrl}/extra-conf">Extra DataTables configuration</a></li>
                     </ul>
                  </li>
               </ul>
               <ul class="nav pull-right">
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Help
                        <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="http://dandelion.github.io/datatables">Documentation</a>
                        <li><a href="http://dandelion-forum.48353.x6.nabble.com/">Forum</a></li>
                        <li><a href="https://github.com/dandelion/dandelion-samples/issues">Report an issue</a></li>
                     </ul>
                  </li>
               </ul>
            </div>
         </div>
      </div>
   </div>

   <div class="container">
      <div class="row-fluid">
         <div class="span12" style="min-height: 550px;">
            <tiles:insertAttribute name="content" />
         </div>
      </div>
      <hr />
      <footer>
         Footer
      </footer>
   </div>
</body>
</html>