<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="dandelion" uri="http://github.com/dandelion" %>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../common/head.jsp" />
<dandelion:bundle include="bundle-using-taglib" />
</head>
<body>

   <jsp:include page="../common/navbar.jsp" />

   <div class="container">
      
      <div class="row-fluid">
         <div class="span12">
            <h2>Interacting with the asset graph</h2>
            <h3>Using the JSP taglib</h3>
            <p>In this example, a bundle is activated using the JSP taglib:
<pre>
&lt;dandelion:bundle include="bundle-using-taglib" />
</pre>
            </p>
         </div>
      </div>
      
      <div class="row-fluid">
         <div class="span12">
            <div id="msg" class="alert alert-success hide"></div>
         </div>
      </div>
   </div>
</body>
</html>