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
            <h2>Default bundles</h2>
            <p>
               As you can see, this application uses the
               <a href="http://getbootstrap.com/2.3.2/">Bootstrap v2 framework</a> and also custom
               CSS.
            </p>
            <p>
               This is done thanks to the <code>src/main/resources/dandelion/dandelion.properties</code> file which contains:
<pre>
bundle.includes=sample,bootstrap2
</pre>               
            </p>
            <p>
               The
               <code>bundle.includes</code>
               configuration allows you to activate bundle permanently. Thus both <i>sample</i> and
               <i>bootstrap2</i> will be loaded in every page.
            </p>
            <p>
               Let's take a closer look at these bundles.
            </p>
            
            <br />
            <h4><i>bootstrap2</i> bundle</h4>
            <p>
               The first bundle <i>bootstrap2</i>:
            </p>
            <ul>
               <li>declares <i>jquery</i> as a dependency</li>
               <li>defines only one CSS to be loaded: <code>bootstrap.min.css</code></li>
            </ul>
            <p>
               As a consequence, if you take a look at the page sources, you have in the <code>head</code> section:
<pre>
&lt;link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.0/css/bootstrap.min.css" />
</pre>
            </p>
            <p>
               And at the end of the <code>body</code> section:
            </p>
<pre>
&lt;script src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js" >&lt;/script>
</pre>
      
            <br />
            <h4><i>sample</i> bundle</h4>
            <p>
               The second bundle active by default is <i>sample</i>. This bundle:
            </p>
            <ul>
               <li>has no dependency</li>
               <li>defines only one CSS to be loaded: <code>application.css</code>, containing CSS code that must be loaded everywhere in the application</li>
            </ul>
            <p>
               As a consequence, if you take a look at the page sources, you have in the <code>head</code> section:
<pre>
&lt;link rel="stylesheet" href="http://localhost:8080/dandelion-jsp-scope/assets/css/application.css" />
</pre>
            </p>
            <p>
               Note that this CSS file above is loaded in first because it has no dependency.
            </p>
         </div>
      </div>
   </div>
</body>
</html>