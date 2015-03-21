<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<c:url value="/" var="home" />
<c:url value="/ajax" var="ajaxUrl" />
<c:url value="/server-side" var="serverSideUrl" />
<c:url value="/filtering" var="filteringUrl" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>datatables-jsp-ajax</title>
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
            <a class="brand" href="${home}">datatables-jsp-ajax</a>
            <div class="nav-collapse collapse navbar-responsive-collapse">
               <ul class="nav">
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">AJAX source <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${ajaxUrl}/index">Using an AJAX source</a></li>
                        <li><a href="${ajaxUrl}/handling-null-default-values">Handling null/default values</a></li>
                     </ul>
                  </li>
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Server-side processing <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${serverSideUrl}/enabling-server-side-processing">Enabling server-side processing</a></li>
                        <li><a href="${serverSideUrl}/pipelining-data">Pipelining data</a></li>
                        <li><a href="${serverSideUrl}/pipelining-data-with-custom-pipesize">Pipelining data with custom pipe size</a></li>
                        <li><a href="${serverSideUrl}/column-custom-rendering">Column custom rendering</a></li>
                        <li><a href="${serverSideUrl}/custom-ajax-request">Custom AJAX request</a></li>
                        <li><a href="${serverSideUrl}/data-default-reloading">Data default reloading</a></li>
                        <li><a href="${serverSideUrl}/data-custom-reloading">Data custom reloading</a></li>
                     </ul>
                  </li>
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Filtering <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${filteringUrl}/global-delayed-filtering">Global delayed filtering</a></li>
                        <li><a href="${filteringUrl}/filtering-onclick">Filtering on click</a></li>
                        <li><a href="${filteringUrl}/filtering-onclick-with-external-form">Filtering on click with external form</a></li>
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
                        <li><a href="https://waffle.io/dandelion/dandelion-samples">Report an issue</a></li>
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
   </div>
</body>
</html>