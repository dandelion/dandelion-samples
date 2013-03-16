<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<c:url value="/" var="home" />
<c:url value="/basic" var="basic" />
<c:url value="/advanced" var="advanced" />
<c:url value="/ajax" var="ajax" />
<c:url value="/themes" var="themes" />
<c:url value="/features" var="features" />
<c:url value="/plugins" var="plugins" />

<a href="https://github.com/dandelion/dandelion-samples"><img style="position: fixed; top: 0; right: 0; border: 0; z-index: 1500;"
   src="https://s3.amazonaws.com/github/ribbons/forkme_right_red_aa0000.png" alt="Fork me on GitHub"
/></a>
<div class="navbar navbar-fixed-top">
   <div class="navbar-inner">
      <div class="container">
         <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span>
            <span class="icon-bar"></span>
         </a> <a class="brand" href="${home}">Dandelion-DataTables JSP Demo</a>
         <div class="nav-collapse collapse">
            <ul class="nav">
               <li><a href="${basic}/home"><i class="icon-leaf"></i> Basic</a></li>
               <li><a href="${advanced}/home"><i class="icon-certificate"></i> Advanced</a></li>
               <li><a href="${ajax}/home"><i class="icon-refresh"></i> AJAX</a></li>
               <li><a href="${features}/home"><i class="icon-th-large"></i> Features</a></li>
               <li><a href="${themes}/home"><i class="icon-magic"></i> Themes</a></li>
               <li><a href="${plugins}/home"><i class="icon-plus"></i> Plugins</a></li>
            </ul>
            <ul class="nav pull-right">
               <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-search"></i> Help <b
                     class="caret"
                  ></b></a>
                  <ul class="dropdown-menu">
                     <li><a href="https://github.com/dandelion/issues/issues">Issues / Enhancements</a></li>
                     <li><a href="http://dandelion.github.com/datatables/">Dandelion-DataTables</a></li>
                  </ul></li>
            </ul>
         </div>
         <!--/.nav-collapse -->
      </div>
   </div>
</div>