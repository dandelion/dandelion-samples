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
            <h2 class="section-title">Asset bundles</h2>
            <p>
               As you can see, this application uses the
               <a href="http://getbootstrap.com/2.3.2/">Bootstrap v2 framework</a> and also custom
               CSS.
            </p>
            <p>
               In order to load the necessary assets into pages, the application is configured with
               some
               <i>asset bundles</i>, i.e. JSON files located under the
               <code>src/main/resources/dandelion</code>
               directory and which describe the assets to be injected into pages.
            </p>
            <p>
               Let's take a closer look at these <i>asset bundles</i>.
            </p>
            
            <h4><i>jquery</i> bundle</h4>
            <p>Configured in: <code>src/main/resources/dandelion/vendor/jquery.json</code></p>
            <p>
               This bundle:
            </p>
            <ul>
               <li>declares <i>jquery</i> as a dependency</li>
               <li>defines only one CSS to be loaded: <code>bootstrap.css</code></li>
            </ul>
            <p>
               As a consequence, if you take a look at the end of the <code>&lt;body&gt;</code> section in the HTML source code, you can see:
<pre>
&lt;script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.js">&lt;/script>
</pre>
            </p>
            
            <br />
            <h4><i>bootstrap2</i> bundle</h4>
            <p>Configured in: <code>src/main/resources/dandelion/vendor/bootstrap2.json</code></p>
            <p>
               This bundle:
            </p>
            <ul>
               <li>declares <i>jquery</i> as a dependency</li>
               <li>defines 2 assets to be loaded: <code>bootstrap.js</code> and <code>bootstrap.css</code></li>
            </ul>
            <p>
               As a consequence, if you take a look at the <code>&lt;body&gt;</code> section in the HTML source code:
            </p>
<pre>
&lt;script src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.js" >&lt;/script>
</pre>
            <p>
               Note that since the <i>jquery</i> bundle is declared as a dependency of
               <i>bootstrap2</i>, the asset coming from the <i>jquery</i> bundle are injected before
               those defined in the
               <i>bootstrap2</i> bundle.
            </p>
            <br />
            <h4><i>sample</i> bundle</h4>
            <p>Configured in: <code>src/main/resources/dandelion/sample.json</code></p>
            <p>
               The second bundle:
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