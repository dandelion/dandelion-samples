<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../common/head.jsp" />
</head>
<body>

   <jsp:include page="../common/navbar.jsp" />

   <div class="container">
      
      <div class="row-fluid">
         <div class="span12">
            <h2>Interacting with the asset graph</h2>
            <h3>Using the API</h3>
            <p>In this example, a bundle is programmatically activated, using the Dandelion API.</p>
            <p>
               If you take a look at the controller defined in <i>SampleController.java</i>, you'll see that the bundle
               <i>bundle-using-api</i> is activated thanks to the
               <code>AssetRequestContext</code> utility
               :
<pre>
AssetRequestContext.get(request).addBundle("bundle-using-api");
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