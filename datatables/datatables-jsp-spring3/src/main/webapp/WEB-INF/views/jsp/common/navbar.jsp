<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<c:url value="/" var="home" />
<c:url value="/basics" var="basic" />
<c:url value="/advanced" var="advanced" />
<c:url value="/ajax" var="ajax" />
<c:url value="/export" var="export" />
<c:url value="/themes" var="themes" />
<c:url value="/styling" var="stylingUrl" />
<c:url value="/features" var="features" />
<c:url value="/plugins" var="plugins" />

<a href="https://github.com/dandelion/dandelion-samples"><img style="position: fixed; top: 0; right: 0; border: 0; z-index: 1500;"
   src="https://s3.amazonaws.com/github/ribbons/forkme_right_red_aa0000.png" alt="Fork me on GitHub"
/></a>
<div class="navbar navbar-fixed-top">
   <div class="navbar-inner">
      <div class="container" style="padding-left:25px;">
         <a class="brand" href="${home}" style="margin-left:5px;">Dandelion-Datatables</a>
         <div class="nav-collapse collapse">
            <ul class="nav">
               <li class="<tiles:getAsString name="tabBasics"/>"><a href="${basic}/home"><i class="icon-leaf"></i> Basics</a></li>
               <li class="<tiles:getAsString name="tabStyling"/>"><a href="${stylingUrl}/home"><i class="icon-magic"></i> Styling</a></li>
               <li class="<tiles:getAsString name="tabAjax"/>"><a href="${ajax}/home"><i class="icon-refresh"></i> AJAX</a></li>
               <li class="<tiles:getAsString name="tabExport"/>"><a href="${export}/home"><i class="icon-file-text-alt"></i> Export</a></li>
               <li class="<tiles:getAsString name="tabAdvanced"/>"><a href="${advanced}/home"><i class="icon-certificate"></i> Advanced usage</a></li>
               <li class="<tiles:getAsString name="tabPlugins"/>"><a href="${plugins}/home"><i class="icon-plus"></i> Plugins</a></li>
            </ul>
         </div>
      </div>
   </div>
</div>