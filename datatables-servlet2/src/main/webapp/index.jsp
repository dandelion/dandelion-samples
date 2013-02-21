<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/" var="home" />
<c:url value="/demo/basic" var="basic" />
<c:url value="/demo/export" var="export" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>DataTables4j Demo Servlet 2.x</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="DataTables4j demo that uses the backward compatibility module for Servlet 2.x">
<meta name="author" content="Thibault Duchateau">

<!-- Le styles -->
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.2.1/css/bootstrap-combined.min.css" rel="stylesheet">

<style>
body {
	padding-top: 60px;
	/* 60px to make the container go all the way to the bottom of the topbar */
}
</style>

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js"></script>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-33818546-5']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>

<body>

   <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
         <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span>
               <span class="icon-bar"></span>
            </a> <a class="brand" href="${home}">DataTables4j Demo Servlet 2.x</a>
            <div class="nav-collapse collapse">
               <ul class="nav">
                  <li class="active"><a href="${home}">Home</a></li>
                  <li><a href="${basic}">Basic</a></li>
                  <li><a href="${export}">Export</a></li>
               </ul>
            </div>
            <!--/.nav-collapse -->
         </div>
      </div>
   </div>

   <div class="container">

      <div class="row">
         <div class="span12">
            <a href="http://datatables.net/">
               <img src="https://raw.github.com/datatables4j/datatables4j-parent/master/logo_DataTables4j.png" style="float:left; margin-right:20px;"/>
            </a>
            <h3>Live demo using Servlet 2.x</h3>
            <h4>Welcome !</h4>
            <hr />
         </div>
      </div>

      <div class="row">
         <div class="span12 well">
            <p>
               Here is the demo using the <a href="https://github.com/datatables4j/datatables4j-backward-servlet2.x">backward compatibility module
                  for Servlet 2.x</a>.
            </p>
            <p>
               Note that this demo is fully "cloudified" !
               <ul>
                  <li>Deployed to <a href="">CloudBees</a> as a <a href="http://en.wikipedia.org/wiki/Platform_as_a_service">PaaS</a> provider</li>
                  <li>No static resource embedded in the WAR !
                     <ul>
                        <li><a href="http://www.asp.net/ajaxlibrary/cdn.ashx">Microsoft CDN for jQuery and DataTables resources</a></li>
                        <li><a href="http://www.bootstrapcdn.com/">BootstrapCDN for all Bootstrap resources</a></li>
                        <li><a href="https://raw.github.com/datatables4j/datatables4j-parent/master/logo_DataTables4j.png">Github for the DataTables4j logo !</a> (no serious justification :-))</li>
                     </ul>
                  </li>
               </ul>
            </p>
         </div>
      </div>

      <div class="row">
         <div class="span12 well">
            <p>
               Feel free to clone this demo or just browse the sources <a href="https://github.com/datatables4j/datatables4j-demo-servlet2.x">here</a> !
            </p>

         </div>
      </div>
   </div>
   <!-- /container -->

   <!-- Le javascript
    ================================================== -->
   <!-- Placed at the end of the document so the pages load faster -->
   <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.2.1/js/bootstrap.min.js"></script>
</body>
</html>