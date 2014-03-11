<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url var="reloadUrl" value="/asset-graph" />

<!DOCTYPE html>
<html>
<head>
<jsp:include page="common/head.jsp" />
</head>
<body>

   <jsp:include page="common/navbar.jsp" />

   <div class="container">
      <div class="row-fluid">
         <div class="span12">
            <h2>Asset graph viewer</h2>
            <p>
               At any time, you can visualize the asset graph of a request. You will be able to see
               all the active bundles for the current request and how assets are injected into the page.</p>
            <p>
               Just manually add the <code>showDandelionGraph</code> parameter to the URL.
            </p>
            <p class="text-center">
               <a href="?showDandelionGraph" class="btn btn-large btn-primary">Show the asset graph viewer</a>
            </p>
            <p>
               Feel free to test it in all other pages of this sample application!
            </p>
         </div>
      </div>
   </div>
</body>
</html>