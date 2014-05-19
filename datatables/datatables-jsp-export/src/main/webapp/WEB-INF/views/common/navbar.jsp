<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/" var="home" />
<c:url value="/dom" var="dom" />
<c:url value="/ajax" var="ajax" />
<c:url value="/options" var="options" />
<c:url value="/custom" var="custom" />

<a href="https://github.com/dandelion/dandelion-samples">
   <img style="position: fixed; top: 0; left: 0; border: 0; z-index: 1500;" src="https://s3.amazonaws.com/github/ribbons/forkme_left_green_007200.png" alt="Fork me on GitHub"/>
</a>
<div class="navbar navbar-fixed-top">
   <div class="navbar-inner">
      <div class="container">
         <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse">
            <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
         </a> 
         <a class="brand" href="${home}">datatables-jsp-export</a>
         <div class="nav-collapse collapse navbar-responsive-collapse">
            <ul class="nav">
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">DOM sources <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li><a href="${dom}/filter-based">Filter-based</a></li>
                     <li><a href="${dom}/controller-based">Controller-based</a></li>
                     <li><a href="${dom}/customizing-export-content">Customizing export content</a></li>
                  </ul>
               </li>
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">AJAX sources <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li><a href="${ajax}/controller-based">Controller-based</a></li>
                     <li><a href="${ajax}/controller-based-with-custom-http-method">Controller-based with a custom HTTP method</a></li>
                     <li><a href="${ajax}/customizing-export-content">Customizing export content</a></li>
                  </ul>
               </li>
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Export options <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li><a href="${options}/links-position">Links position</a></li>
                     <li><a href="${options}/links-style">Links style</a></li>
                     <li><a href="${options}/orientation">Orientation (PDF)</a></li>
                     <li><a href="${options}/column-autosizing">Column autosizing (XLS/XLSX)</a></li>
                  </ul>
               </li>
               <li><a href="${custom}/custom-export">Totally custom export</a></li>
            </ul>
            <ul class="nav pull-right">
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Help
                     <b class="caret"></b>
                  </a>
                  <ul class="dropdown-menu">
                     <li><a href="http://dandelion.github.io/datatables">Documentation</a></li>
                     <li><a href="http://dandelion-forum.48353.x6.nabble.com/">Forum</a></li>
                     <li><a href="https://waffle.io/dandelion/dandelion-samples">Report an issue</a></li>
                  </ul>
               </li>
            </ul>
         </div>
      </div>
   </div>
</div>