<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>

<%-- <html:link styleClass="btn" forward="home"> --%>
<!--    <bean:message key="link.home" /> -->
<%-- </html:link> --%>
<c:url value="/" var="home" />
<c:url value="/i18n" var="i18nUrl" />

<a href="https://github.com/dandelion/dandelion-samples">
   <img style="position: fixed; top: 0; left: 0; border: 0; z-index: 1500;" src="https://s3.amazonaws.com/github/ribbons/forkme_left_green_007200.png" alt="Fork me on GitHub"/>
</a>
<div class="navbar navbar-fixed-top">
   <div class="navbar-inner">
      <div class="container">
         <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse">
            <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
         </a> 
         <html:link styleClass="brand" forward="home">datatables-jsp-struts1</html:link>
         <div class="nav-collapse collapse navbar-responsive-collapse">
            <ul class="nav">
               <li><html:link action="/i18n">I18n</html:link></li>
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">AJAX <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li><html:link action="/i18n">I18n with Struts</html:link></li>
                  </ul>
               </li>
            </ul>
         </div>
         <!-- /.nav-collapse -->
      </div>
   </div>
   <!-- /navbar-inner -->
</div>