<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/basics" var="basics" />
<c:url value="/advanced" var="advanced" />
<c:url value="/ajax" var="ajax" />
<c:url value="/export" var="export" />
<c:url value="/styling" var="styling" />
<c:url value="/features" var="features" />
<c:url value="/plugins" var="plugins" />
<style>
/* Masthead (docs home)
------------------------- */
.masthead {
  padding: 70px 0 80px;
  margin-bottom: 0;
}
.masthead h1 {
  font-size: 80px;
  line-height: 1;
  letter-spacing: -2px;
}
.masthead p {
  font-size: 40px;
  font-weight: 200;
  line-height: 1.25;
}

/* Textual links in masthead */
.masthead-links {
  margin: 0;
  list-style: none;
}
.masthead-links li {
  display: inline;
  padding: 0 10px;
  color: rgba(255,255,255,.25);
}
.row-fluid{
   margin-top: 30px;
   margin-bottom: 30px;
}
</style>

<div class="masthead">
   <h1>Dandelion-Datatables</h1>
   <p>Demo application</p>
</div>

<div class="row-fluid">
   <div class="span4">
      <i class="icon-leaf icon-3x"></i>
      <h2>Basics</h2>
      <p>Plenty of basic examples: sorting, filtering, paging, how to use implicit objects, CDN option and more!</p>
      <a class="btn" href="${basics}/home">View details »</a>
   </div>
   <div class="span4">
      <i class="icon-magic icon-3x"></i>
      <h2>Styling</h2>
      <p>See how to easily prettify your tables using embedded themes and others cool stuff!</p>
      <a class="btn" href="${styling}/home">View details »</a>
   </div>
   <div class="span4">
      <i class="icon-refresh icon-3x"></i>
      <h2>AJAX</h2>
      <p>All AJAX examples: basic AJAX source, server-side, Spring integration...</p>
      <a class="btn" href="${ajax}/home">View details »</a>
   </div>
</div>

<div class="row-fluid">
   <div class="span4">
      <i class="icon-file-text-alt icon-3x"></i>
      <h2>Export</h2>
      <p>Export examples: PDF, CSV, XLS, everything about export configuration</p>
      <a class="btn" href="${export}/home">View details »</a>
   </div>
   <div class="span4">
      <i class="icon-certificate icon-3x"></i>
      <h2>Advanced usage</h2>
      <p>See how to override the default configuration, how to internationalize the table or how to use a web resource compressor</p>
      <a class="btn" href="${advanced}/home">View details »</a>
   </div>
   <div class="span4">
      <i class="icon-plus icon-3x"></i>
      <h2>Plugins</h2>
      <p>Need to use a DataTables plugin? See how easy it is!
      <a class="btn" href="${plugins}/home">View details »</a>
   </div>
</div>