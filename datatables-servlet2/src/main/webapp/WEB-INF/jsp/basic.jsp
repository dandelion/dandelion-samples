<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="datatables" uri="http://github.com/datatables4j"%>

<c:url value="/" var="home" />
<c:url value="/demo/basic" var="basic" />
<c:url value="/demo/export" var="export" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Bootstrap, from Twitter</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

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
                  <li><a href="${home}">Home</a></li>
                  <li class="active"><a href="${basic}">Basic</a></li>
                  <li><a href="${export}">Export</a></li>
               </ul>
            </div>
            <!--/.nav-collapse -->
         </div>
      </div>
   </div>

   <div class="container">

      <h3>Basic example</h3>

      <p>
         <datatables:table cdn="true" id="myTableId" data="${persons}">
            <datatables:column title="Id" property="id" />
            <datatables:column title="FirstName" property="firstName" />
            <datatables:column title="LastName" property="lastName" />
            <datatables:column title="Street" property="address.street1" />
            <datatables:column title="Mail" property="mail" />
         </datatables:table>
      </p>
      
      <footer>
         Test footer
      </footer>
      
   </div>
   <!-- /container -->

   <!-- Le javascript
    ================================================== -->
   <!-- Placed at the end of the document so the pages load faster -->
   <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.2.1/js/bootstrap.min.js"></script>
</body>
</html>