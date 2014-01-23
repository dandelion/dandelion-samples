<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="WEB-INF/views/common/head.jsp" />
</head>
<body>

   <jsp:include page="WEB-INF/views/common/navbar.jsp" />

   <div class="container">
      <div class="row-fluid">
         <div class="span12">
            <h2>Welcome to Dandelion!</h2>
            <p>
               As you can see, this page uses the
               <a href="http://getbootstrap.com/2.3.2/">Bootstrap v2 theme</a> but also custom CSS.
            </p>
            <p>
               All the CSS code is loaded using the default active scopes configured in the
               <code>src/main/resources/dandelion/dandelion.properties</code> file: <i>bootstrap2</i> and <i>sample</i>.
               file.
            </p>
         </div>
      </div>
      
      <div class="row-fluid">
         <div class="span12">
            <h3>The <i>bootstrap2</i> scope</h3>
            <p>
               The first scope <i>bootstrap2</i>:
            </p>
            <ul>
               <li>has a parent scope called <i>jquery</i></li>
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
         </div>
      </div>
      
      <div class="row-fluid">
         <div class="span12">
            <h3>The <i>sample</i> scope</h3>
            <p>
               The second scope active by default is <i>sample</i>. This scope:
            </p>
            <ul>
               <li>has a parent scope called <i>none</i>, i.e. it has no parent</li>
               <li>defines only one CSS to be loaded: <code>application.css</code>, containing CSS code that must be loaded everywhere in the application</li>
            </ul>
            <p>
               As a consequence, if you take a look at the page sources, you have in the <code>head</code> section:
<pre>
&lt;link rel="stylesheet" href="http://localhost:8080/dandelion-jsp-scope/assets/css/application.css" />
</pre>
            </p>
            <p>
               Note that this CSS file above is loaded in first because it has no parent a.k.a. dependency required.
            </p>
         </div>
      </div>
   </div>
</body>
</html>