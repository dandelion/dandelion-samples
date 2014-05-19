<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="dandelion" uri="http://github.com/dandelion" %>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="common/head.jsp" />
<dandelion:bundle includes="sample-asset-locators" />
</head>
<body>

   <jsp:include page="common/navbar.jsp" />

   <div class="container">
      <div class="row-fluid">
         <div class="span12">
            <h2 class="section-title">Asset locators</h2>
            <p>
            	In this example, a sample called <i>sample-asset-locators</i> is loaded. 
            </p>
            <div id="msg"></div>
         </div>
      </div>
   </div>
</body>
</html>