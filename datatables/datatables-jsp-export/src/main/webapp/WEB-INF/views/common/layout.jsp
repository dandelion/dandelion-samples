<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="dandelion" uri="http://github.com/dandelion" %>

<dandelion:assets scopes="dandelion-demo,bootstrap" />

<c:url value="/" var="home" />
<c:url value="/basics" var="basicsUrl" />
<c:url value="/advanced" var="advancedUrl" />
<c:url value="/export" var="exportUrl" />
<c:url value="/themes" var="themes" />
<c:url value="/styling" var="stylingUrl" />
<c:url value="/features" var="features" />
<c:url value="/plugins" var="pluginsUrl" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>datatables-jsp-spring3</title>
</head>
<body>
   
   <a href="https://github.com/dandelion/dandelion-samples">
      <img style="position: fixed; top: 0; left: 0; border: 0; z-index: 1500;" src="https://s3.amazonaws.com/github/ribbons/forkme_left_green_007200.png" alt="Fork me on GitHub"/>
   </a>
   <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
         <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse">
               <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
            </a> 
            <a class="brand" href="${home}">datatables-jsp-basics</a>
            <div class="nav-collapse collapse navbar-responsive-collapse">
               <ul class="nav">
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Basics <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${basicsUrl}/default-configuration">Default configuration</a></li>
                        <li class="dropdown-submenu"><a href="#">Feature enablement</a>
                           <ul class="dropdown-menu">
                              <li><a href="${basicsUrl}/feature-enablement/info">Display table informations</a></li>
                              <li><a href="${basicsUrl}/feature-enablement/sorting">Enable/disable sorting</a></li>
                              <li><a href="${basicsUrl}/feature-enablement/paging">Enable/disable paging</a></li>
                              <li><a href="${basicsUrl}/feature-enablement/lengthchanging">Enable/disable length changing</a></li>
                           </ul></li>
                        <li class="dropdown-submenu"><a href="#">Sorting</a>
                           <ul class="dropdown-menu">
                              <li><a href="${basicsUrl}/sorting/individualcolumnsorting">Individual column sorting</a></li>
                              <li><a href="${basicsUrl}/sorting/sortinginit">Sorting initialization</a></li>
                              <li><a href="${basicsUrl}/sorting/sortingdirectioncontrol">Sorting direction control</a></li>
                              <li><a href="${basicsUrl}/sorting/naturalsort">Sorting type: natural, date</a></li>
                           </ul></li>
                        <li class="dropdown-submenu"><a href="#">Filtering</a>
                           <ul class="dropdown-menu">
                              <li><a href="${basicsUrl}/filtering/extraform">Using an extra form</a></li>
                              <li><a href="${basicsUrl}/filtering/input">Using input fields</a></li>
                              <li><a href="${basicsUrl}/filtering/select">Using a drop-down list</a></li>
                              <li><a href="${basicsUrl}/filtering/select-with-values">Using a drop-down list with custom values</a></li>
                              <li><a href="${basicsUrl}/filtering/filterplaceholder">Using different filter placeholders</a></li>
                              <li><a href="${basicsUrl}/filtering/exclude-column-from-global-filtering">Exclude column from global filtering</a></li>
                           </ul></li>
                        <li class="dropdown-submenu"><a href="#">Paging</a>
                           <ul class="dropdown-menu">
                              <li><a href="${basicsUrl}/paging/bootstrap">Bootstrap</a></li>
                              <li><a href="${basicsUrl}/paging/four_button">Four button</a></li>
                              <li><a href="${basicsUrl}/paging/full_numbers">Full numbers</a></li>
                              <li><a href="${basicsUrl}/paging/input">Input</a></li>
                              <li><a href="${basicsUrl}/paging/listbox">Listbox</a></li>
                              <li><a href="${basicsUrl}/paging/scrolling">Scrolling</a></li>
                              <li><a href="${basicsUrl}/paging/two_button">Two button</a></li>
                           </ul></li>
                        <li><a href="${basicsUrl}/appear">Changing the appearance</a></li>
                        <li><a href="${basicsUrl}/default-content">Default content</a></li>
                        <li><a href="${basicsUrl}/custom-content">Custom column content</a></li>
                        <li><a href="${basicsUrl}/implicit-object">Using implicit object</a></li>
                        <li><a href="${basicsUrl}/custom-header">Custom column head</a></li>
                        <li class="dropdown-submenu"><a href="#">Scrolling</a>
                           <ul class="dropdown-menu">
                              <li><a href="${basicsUrl}/scrolling/scroll-horizontal">Horizontal scrolling</a></li>
                              <li><a href="${basicsUrl}/scrolling/scroll-vertical">Vertical scrolling</a></li>
                           </ul>
                        </li>
                        <li><a href="${basicsUrl}/multiple">Multiple tables</a></li>
                     </ul>
                  </li>
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Styling <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${stylingUrl}/basic-styling">Basic styling</a></li>
                        <li class="dropdown-submenu"><a href="#">Bootstrap 2 theme</a>
                           <ul class="dropdown-menu">
                              <li><a href="${stylingUrl}/bootstrap/bootstrap2">Bootstrap 2</a></li>
                              <li><a href="${stylingUrl}/bootstrap/bootstrap2-responsive">Bootstrap 2 responsive</a></li>
                              <li><a href="${stylingUrl}/bootstrap/tablecloth-dark">Tablecloth - Dark</a></li>
                              <li><a href="${stylingUrl}/bootstrap/tablecloth-stats">Tablecloth - Stats</a></li>
                              <li><a href="${stylingUrl}/bootstrap/tablecloth-paper">Tablecloth - Paper</a></li>
                           </ul></li>
                        <li class="dropdown-submenu"><a href="#">jQueryUI theme</a>
                           <ul class="dropdown-menu">
                              <li><a href="${stylingUrl}/jqueryui/jqui_blacktie">Black tie</a></li>
                           </ul>
                        </li>
                     </ul>
                  </li>
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Advanced <b class="caret"></b></a>
                     <ul class="dropdown-menu">   
                        <li><a href="${advancedUrl}/rowid">Row id</a></li>
                        <li><a href="${advancedUrl}/i18n">I18n with Spring</a></li>
                        <li><a href="${advancedUrl}/extrafile">Extra Javascript files</a></li>
                        <li><a href="${advancedUrl}/extraconf">Extra DataTables configuration</a></li>
                        <li><a href="${advancedUrl}/callbacks">Using callbacks</a></li>
                        <li><a href="${advancedUrl}/override">Overriding default configuration</a></li>
                        <li><a href="${advancedUrl}/dynamic-attributes">Dynamic attributes</a></li>
                        <li><a href="${advancedUrl}/configuration-group">Configuration group</a></li>
                        <li><a href="${advancedUrl}/custom-extension">Custom extension</a></li>
                     </ul>
                  </li>
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Plugins <b class="caret"></b></a>
                     <ul class="dropdown-menu">   
                        <li><a href="${pluginsUrl}/colreorder">ColReorder</a></li>
                        <li><a href="${pluginsUrl}/scroller">Scroller</a></li>
                        <li><a href="${pluginsUrl}/fixedheader">FixedHeader</a></li>
                     </ul>
                  </li>
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Export <b class="caret"></b></a>
                     <ul class="dropdown-menu">   
                        <li><a href="${exportUrl}/export-activation">Export activation</a></li>
                        <li><a href="${exportUrl}/multiple-formats">Export in multiple formats</a></li>
                        <li class="dropdown-submenu"><a href="#">Customizing export links</a>
                           <ul class="dropdown-menu">
                              <li><a href="${exportUrl}/links/style">Link style</a></li>
                              <li><a href="${exportUrl}/links/position">Link position</a></li>
                           </ul>
                        </li>
                        <li class="dropdown-submenu"><a href="#">Using DOM sources</a>
                           <ul class="dropdown-menu">
                              <li><a href="${exportUrl}/dom/filter-based-export">Filter-based export</a></li>
                              <li><a href="${exportUrl}/dom/controller-based-export">Controller-based export</a></li>
                              <li><a href="${exportUrl}/dom/customizing-column-content">Customizing column content</a></li>
                           </ul>
                        </li>
                        <li class="dropdown-submenu"><a href="#">Export options</a>
                           <ul class="dropdown-menu">
                              <li><a href="${exportUrl}/options/export-file-name">Export file name</a></li>
                              <li><a href="${exportUrl}/options/column-auto-sizing">Column auto-sizing</a></li>
                              <li><a href="${exportUrl}/options/include-header">Include header</a></li>
                           </ul>
                        </li>
                     </ul>
                  </li>
               </ul>
               <ul class="nav pull-right">
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Help
                        <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="http://dandelion.github.io/datatables">Documentation</a>
                        <li><a href="http://dandelion-forum.48353.x6.nabble.com/">Forum</a></li>
                        <li><a href="https://github.com/dandelion/issues/issues">Report an issue</a></li>
                     </ul>
                  </li>
               </ul>
            </div>
            <!-- /.nav-collapse -->
         </div>
      </div>
      <!-- /navbar-inner -->
   </div>

   <div class="container">
      <div class="row-fluid">
         <div class="span12" style="min-height: 550px;">
            <tiles:insertAttribute name="content" />
         </div>
      </div>
      <hr />
      <footer>
         Footer
      </footer>
   </div>
</body>
</html>