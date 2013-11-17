<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="dandelion" uri="http://github.com/dandelion" %>

<dandelion:assets scopes="sample,bootstrap" />

<c:url value="/" var="home" />
<c:url value="/sorting" var="sortingUrl" />
<c:url value="/filtering" var="filteringUrl" />
<c:url value="/paging" var="pagingUrl" />
<c:url value="/scrolling" var="scrollingUrl" />
<c:url value="/advanced" var="advancedUrl" />
<c:url value="/multiple-tables" var="multipleTablesUrl" />
<c:url value="/styling" var="stylingUrl" />
<c:url value="/dom-positioning" var="domPositioningUrl" />
<c:url value="/column-rendering" var="columnRenderingUrl" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>datatables-jsp-spring3</title>
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
            <a class="brand" href="${home}">datatables-jsp-basics</a>
            <div class="nav-collapse collapse navbar-responsive-collapse">
               <ul class="nav">
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Sorting <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${sortingUrl}/enable-disable-sorting">Enable/disable sorting</a></li>
                        <li><a href="${sortingUrl}/individualcolumnsorting">Individual column sorting</a></li>
                        <li><a href="${sortingUrl}/sortinginit">Sorting initialization</a></li>
                        <li><a href="${sortingUrl}/sortingdirectioncontrol">Sorting direction control</a></li>
                        <li><a href="${sortingUrl}/naturalsort">Sorting type: natural, date</a></li>
                     </ul>
                  </li>
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Filtering <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${filteringUrl}/enable-disable-filtering">Enable/disable filtering</a></li>
                        <li><a href="${filteringUrl}/extraform">Using an extra form</a></li>
                        <li><a href="${filteringUrl}/input">Using input fields</a></li>
                        <li><a href="${filteringUrl}/select">Using a drop-down list</a></li>
                        <li><a href="${filteringUrl}/select-with-values">Using a drop-down list with custom values</a></li>
                        <li><a href="${filteringUrl}/filterplaceholder">Using different filter placeholders</a></li>
                        <li><a href="${filteringUrl}/exclude-column-from-global-filtering">Exclude column from global filtering</a></li>
                     </ul>
                  </li>
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Paging <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${pagingUrl}/enable-disable-paging">Enable/disable paging</a></li>
                        <li><a href="${pagingUrl}/bootstrap">Bootstrap</a></li>
                        <li><a href="${pagingUrl}/four_button">Four button</a></li>
                        <li><a href="${pagingUrl}/full_numbers">Full numbers</a></li>
                        <li><a href="${pagingUrl}/input">Input</a></li>
                        <li><a href="${pagingUrl}/listbox">Listbox</a></li>
                        <li><a href="${pagingUrl}/scrolling">Scrolling</a></li>
                        <li><a href="${pagingUrl}/two_button">Two button</a></li>
                     </ul>
                  </li>
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Scrolling <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${scrollingUrl}/scroll-horizontal">Horizontal scrolling</a></li>
                        <li><a href="${scrollingUrl}/scroll-vertical">Vertical scrolling</a></li>
                        <li><a href="${scrollingUrl}/scroll-both">Both</a></li>
                     </ul>
                  </li>
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Column rendering <b class="caret"></b></a>
                     <ul class="dropdown-menu">   
                        <li><a href="${columnRenderingUrl}/column-default-content">Column default content</a></li>
                        <li><a href="${columnRenderingUrl}/column-custom-content">Column custom content</a></li>
                        <li><a href="${columnRenderingUrl}/implicit-object">Using implicit object</a></li>
                        <li><a href="${columnRenderingUrl}/column-custom-header">Column custom header</a></li>
                     </ul>
                  </li>
                  <li><a href="${multipleTablesUrl}">Multiple tables</a></li>
                  <li><a href="${stylingUrl}">Styling</a></li>
                  <li><a href="${domPositioningUrl}">DOM positioning</a></li>
<!--                   <li class="dropdown"> -->
<!--                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Basics <b class="caret"></b></a> -->
<!--                      <ul class="dropdown-menu"> -->
<%--                         <li><a href="${basicsUrl}/default-configuration">Default configuration</a></li> --%>
<!--                         <li class="dropdown-submenu"><a href="#">Feature enablement</a> -->
<!--                            <ul class="dropdown-menu"> -->
<%--                               <li><a href="${basicsUrl}/feature-enablement/info">Display table informations</a></li> --%>
<%--                               <li><a href="${basicsUrl}/feature-enablement/sorting">Enable/disable sorting</a></li> --%>
<%--                               <li><a href="${basicsUrl}/feature-enablement/paging">Enable/disable paging</a></li> --%>
<%--                               <li><a href="${basicsUrl}/feature-enablement/lengthchanging">Enable/disable length changing</a></li> --%>
<!--                            </ul></li> -->
<!--                      </ul> -->
<!--                   </li> -->
<!--                   <li class="dropdown"> -->
<!--                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Misc. <b class="caret"></b></a> -->
<!--                      <ul class="dropdown-menu">    -->
<%--                         <li><a href="${advancedUrl}/rowid">Applying row ids</a></li> --%>
<%--                         <li><a href="${basicsUrl}/appear">Changing the appearance</a></li> --%>
<!--                      </ul> -->
<!--                   </li> -->
               </ul>
               <ul class="nav pull-right">
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Help
                        <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="http://dandelion.github.io/datatables">Documentation</a>
                        <li><a href="http://dandelion-forum.48353.x6.nabble.com/">Forum</a></li>
                        <li><a href="https://github.com/dandelion/issues/issues">Report an issue</a></li>
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