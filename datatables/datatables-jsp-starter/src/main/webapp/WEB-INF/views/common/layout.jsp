<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<c:url value="/" var="home" />
<c:url value="/sorting" var="sortingUrl" />
<c:url value="/basics" var="basicsUrl" />
<c:url value="/filtering" var="filteringUrl" />
<c:url value="/paging" var="pagingUrl" />
<c:url value="/scrolling" var="scrollingUrl" />
<c:url value="/styling" var="stylingUrl" />
<c:url value="/column-rendering" var="columnRenderingUrl" />
<c:url value="/advanced" var="advancedUrl" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>datatables-jsp-starter</title>
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
            <a class="brand" href="${home}">datatables-jsp-starter</a>
            <div class="nav-collapse collapse navbar-responsive-collapse">
               <ul class="nav">
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Basics <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li class="dropdown-submenu">
                           <a href="#" class="dropdown-toggle" data-toggle="dropdown">Sorting <b class="caret"></b></a>
                           <ul class="dropdown-menu">
                              <li><a href="${basicsUrl}/sorting/enable-disable-sorting">Enable/disable sorting</a></li>
                              <li><a href="${basicsUrl}/sorting/individual-column-sorting">Individual column sorting</a></li>
                              <li><a href="${basicsUrl}/sorting/sorting-init">Default sorting initialization</a></li>
                              <li><a href="${basicsUrl}/sorting/sorting-init-with-custom-order">Custom sorting initialization</a></li>
                              <li><a href="${basicsUrl}/sorting/sorting-direction-control">Sorting direction control</a></li>
                              <li><a href="${basicsUrl}/sorting/naturalsort">Sorting type: natural, date</a></li>
                           </ul>
                        </li>
                        <li class="dropdown-submenu">
                           <a href="#" class="dropdown-toggle" data-toggle="dropdown">Filtering <b class="caret"></b></a>
                           <ul class="dropdown-menu">
                              <li><a href="${basicsUrl}/filtering/enable-disable-global-filtering">Enable/disable global filtering</a></li>
                              <li><a href="${basicsUrl}/filtering/input">Using input fields</a></li>
                              <li><a href="${basicsUrl}/filtering/select">Using a drop-down list</a></li>
                              <li><a href="${basicsUrl}/filtering/select-with-values">Using a drop-down list with custom values</a></li>
                              <li><a href="${basicsUrl}/filtering/filterplaceholder">Using different filter placeholders</a></li>
                              <li><a href="${basicsUrl}/filtering/external-form">Using an external form</a></li>
                              <li><a href="${basicsUrl}/filtering/exclude-column-from-global-filtering">Exclude column from global filtering</a></li>
                              <li><a href="${basicsUrl}/filtering/filtering-onclick">Filtering on click</a></li>
                           </ul>
                        </li>
                        <li class="dropdown-submenu">
                           <a href="#" class="dropdown-toggle" data-toggle="dropdown">Paging <b class="caret"></b></a>
                           <ul class="dropdown-menu">
                              <li><a href="${basicsUrl}/paging/enable-disable-paging">Enable/disable paging</a></li>
                              <li><a href="${basicsUrl}/paging/defining-length-menu-options">Defining length menu options</a></li>
                              <li><a href="${basicsUrl}/paging/enable-disable-length-menu">enable/disable length menu</a></li>
                              <li><a href="${basicsUrl}/paging/simple">Paging style: Simple</a></li>
                              <li><a href="${basicsUrl}/paging/simple-numbers">Paging style: Simple numbers</a></li>
                              <li><a href="${basicsUrl}/paging/full">Paging style: Full</a></li>
                              <li><a href="${basicsUrl}/paging/full-numbers">Paging style: Full numbers</a></li>
                              <li><a href="${basicsUrl}/paging/bootstrap-simple">Paging style: Bootstrap simple</a></li>
                              <li><a href="${basicsUrl}/paging/bootstrap-full">Paging style: Bootstrap full</a></li>
                              <li><a href="${basicsUrl}/paging/bootstrap-full-numbers">Paging style: Bootstrap full numbers</a></li>
                           </ul>
                        </li>
                        <li class="dropdown-submenu">
                           <a href="#" class="dropdown-toggle" data-toggle="dropdown">Scrolling <b class="caret"></b></a>
                           <ul class="dropdown-menu">
                              <li><a href="${basicsUrl}/scrolling/scroll-horizontal">Horizontal scrolling</a></li>
                              <li><a href="${basicsUrl}/scrolling/scroll-vertical">Vertical scrolling</a></li>
                           </ul>
                        </li>
                        <li><a href="${basicsUrl}/dom-positioning">DOM positioning</a></li>
                     </ul>
                  </li>
                  
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Column rendering <b class="caret"></b></a>
                     <ul class="dropdown-menu">   
                        <li><a href="${columnRenderingUrl}/column-default-content">Column default content</a></li>
                        <li><a href="${columnRenderingUrl}/column-custom-content">Column custom content</a></li>
                        <li><a href="${columnRenderingUrl}/implicit-object">Using implicit object</a></li>
                        <li><a href="${columnRenderingUrl}/column-custom-header">Column custom header</a></li>
                        <li><a href="${columnRenderingUrl}/row-id">Row id</a></li>
                     </ul>
                  </li>
                  <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Styling <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                           <li><a href="${stylingUrl}/styling">Styling</a></li>
                           <li><a href="${stylingUrl}/effect">Applying effects</a></li>
                        </ul>
                     </li>
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Advanced usage <b class="caret"></b></a>
                     <ul class="dropdown-menu">   
                        <li><a href="${advancedUrl}/multiple-tables">Multiple tables</a></li>
                        <li><a href="${advancedUrl}/callbacks">Callbacks</a></li>
                        <li><a href="${advancedUrl}/dynamic-attributes">Dynamic attributes</a></li>
                        <li><a href="${advancedUrl}/extra-js">Extra Javascript</a></li>
                        <li><a href="${advancedUrl}/extra-html">Extra HTML snippet</a></li>
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