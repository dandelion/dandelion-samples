<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<a href="https://github.com/dandelion/dandelion-samples">
   <img style="position: fixed; top: 0; left: 0; border: 0; z-index: 1500;" src="https://s3.amazonaws.com/github/ribbons/forkme_left_green_007200.png" alt="Fork me on GitHub"/>
</a>
<div class="navbar navbar-fixed-top">
   <div class="navbar-inner">
      <div class="container">
         <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse">
            <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
         </a> 
         <a class="brand" href="<c:url value="/" />">dandelion-jsp-starter</a>
         <div class="nav-collapse collapse navbar-responsive-collapse">
            <ul class="nav">
               <li><a href="<c:url value="/asset-bundles" />">Asset bundles</a></li>
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Interacting with the asset graph <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li><a href="<c:url value="/asset-graph" />/using-the-properties-file">Using the properties file</a></li>
                     <li><a href="<c:url value="/asset-graph" />/using-the-api">Using the API</a></li>
                     <li><a href="<c:url value="/asset-graph" />/using-the-jsp-taglib">Using the JSP taglib</a></li>
                  </ul>
               </li>
               <li><a href="<c:url value="/asset-locators" />">Asset locators</a></li>
               <li><a href="<c:url value="/asset-graph/graph-viewer" />">Asset graph viewer</a></li>
            </ul>
            <ul class="nav pull-right">
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Help <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li><a href="http://dandelion.github.io/dandelion">Documentation</a>
                     <li><a href="http://dandelion-forum.48353.x6.nabble.com/">Forum</a></li>
                     <li><a href="https://waffle.io/dandelion/dandelion-samples">Report an issue</a></li>
                  </ul>
               </li>
            </ul>
         </div>
      </div>
   </div>
</div>