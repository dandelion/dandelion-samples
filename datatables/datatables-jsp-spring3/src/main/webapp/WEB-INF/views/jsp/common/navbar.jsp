<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<c:url value="/" var="home" />
<c:url value="/basics" var="basic" />
<c:url value="/advanced" var="advanced" />
<c:url value="/export" var="exportUrl" />
<c:url value="/themes" var="themes" />
<c:url value="/styling" var="stylingUrl" />
<c:url value="/features" var="features" />
<c:url value="/plugins" var="plugins" />

<c:url value="/basics" var="basics" />

<a href="https://github.com/dandelion/dandelion-samples">
   <img style="position: fixed; top: 0; left: 0; border: 0; z-index: 1500;" src="https://s3.amazonaws.com/github/ribbons/forkme_left_green_007200.png" alt="Fork me on GitHub"/>
</a>
<div class="navbar navbar-fixed-top">
   <div class="navbar-inner">
      <div class="container">
         <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse">
            <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
         </a> 
         <a class="brand" href="${home}">datatables-jsp-spring3</a>
         <div class="nav-collapse collapse navbar-responsive-collapse">
            <ul class="nav">
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Basics <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li><a href="${basics}/default-configuration">Default configuration</a></li>
                     <li class="dropdown-submenu"><a href="#">Feature enablement</a>
                        <ul class="dropdown-menu">
                           <li><a href="${basics}/feature-enablement/info">Display table informations</a></li>
                           <li><a href="${basics}/feature-enablement/sorting">Enable/disable sorting</a></li>
                           <li><a href="${basics}/feature-enablement/paging">Enable/disable paging</a></li>
                           <li><a href="${basics}/feature-enablement/lengthchanging">Enable/disable length changing</a></li>
                        </ul></li>
                     <li class="dropdown-submenu"><a href="#">Sorting</a>
                        <ul class="dropdown-menu">
                           <li><a href="${basics}/sorting/individualcolumnsorting">Individual column sorting</a></li>
                           <li><a href="${basics}/sorting/sortinginit">Sorting initialization</a></li>
                           <li><a href="${basics}/sorting/sortingdirectioncontrol">Sorting direction control</a></li>
                           <li><a href="${basics}/sorting/naturalsort">Sorting type: natural, date</a></li>
                        </ul></li>
                     <li class="dropdown-submenu"><a href="#">Filtering</a>
                        <ul class="dropdown-menu">
                           <li><a href="${basics}/filtering/extraform">Using an extra form</a></li>
                  <%--          <li><a href="${basics}/filtering/number-range">Using a number range</a></li> --%>
                           <li><a href="${basics}/filtering/input">Using input fields</a></li>
                           <li><a href="${basics}/filtering/select">Using a drop-down list</a></li>
                           <li><a href="${basics}/filtering/select-with-values">Using a drop-down list with custom values</a></li>
                           <li><a href="${basics}/filtering/filterplaceholder">Using different filter placeholders</a></li>
                           <li><a href="${basics}/filtering/exclude-column-from-global-filtering">Exclude column from global filtering</a></li>
                        </ul></li>
                     <li class="dropdown-submenu"><a href="#">Paging</a>
                        <ul class="dropdown-menu">
                           <li><a href="${basics}/paging/bootstrap">Bootstrap</a></li>
                           <li><a href="${basics}/paging/four_button">Four button</a></li>
                           <li><a href="${basics}/paging/full_numbers">Full numbers</a></li>
                           <li><a href="${basics}/paging/input">Input</a></li>
                           <li><a href="${basics}/paging/listbox">Listbox</a></li>
                           <li><a href="${basics}/paging/scrolling">Scrolling</a></li>
                           <li><a href="${basics}/paging/two_button">Two button</a></li>
                        </ul></li>
                     <li><a href="${basics}/appear">Changing the appearance</a></li>
                     <li><a href="${basics}/default-content">Default content</a></li>
                  <%--    <li><a href="${basics}/autowidth">Table width</a></li> --%>
                     <li><a href="${basics}/cdn">Using CDN</a></li>
                     <li><a href="${basics}/custom-content">Custom column content</a></li>
                     <li><a href="${basics}/implicit-object">Using implicit object</a></li>
                     <li><a href="${basics}/custom-header">Custom column head</a></li>
                     <li class="dropdown-submenu"><a href="#">Scrolling</a>
                        <ul class="dropdown-menu">
                           <li><a href="${basics}/scrolling/scroll-horizontal">Horizontal scrolling</a></li>
                           <li><a href="${basics}/scrolling/scroll-vertical">Vertical scrolling</a></li>
                        </ul>
                     </li>
                     <li><a href="${basics}/multiple">Multiple tables</a></li>
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
                           <li><a href="${stylingUrl}/jqueryui/jqui_blitzer">Blitzer</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_cupertino">Cupertino</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_darkhive">Dark-hive</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_dotluv">Dot-luv</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_eggplant">EggPlant</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_excitebike">Excite-bike</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_flick">Flick</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_hotsneaks">Hot-sneaks</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_humanity">Humanity</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_lefrog">Le-frog</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_mintchoc">Mint-choc</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_overcast">Overcast</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_peppergrinder">Pepper-grinder</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_redmond">Redmond</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_smoothness">Smoothness</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_southstreet">South-street</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_start">Start</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_sunny">Sunny</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_swankypurse">Swanky-purse</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_trontastic">Trontastic</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_uidarkness">UI-Darkness</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_uilightness">UI-Lightness</a></li>
                           <li><a href="${stylingUrl}/jqueryui/jqui_vader">Vader</a></li>
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
                     <li><a href="${advancedUrl}/compressor">Using asset compression</a></li>
                     <li><a href="${advancedUrl}/aggregator">Using asset aggregation</a></li>
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
                     <li class="dropdown-submenu"><a href="#">Using AJAX sources</a>
                        <ul class="dropdown-menu">
                           <li><a href="${exportUrl}/ajax/controller-based-export">Controller-based export</a></li>
                           <li><a href="${exportUrl}/ajax/customizing-column-content">Customizing column content</a></li>
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
               <li><a href="#">Link</a></li>
               <li class="divider-vertical"></li>
               <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown
                     <b class="caret"></b>
               </a>
                  <ul class="dropdown-menu">
                     <li><a href="#">Action</a></li>
                     <li><a href="#">Another action</a></li>
                     <li><a href="#">Something else here</a></li>
                     <li class="divider"></li>
                     <li><a href="#">Separated link</a></li>
                  </ul></li>
            </ul>
         </div>
         <!-- /.nav-collapse -->
      </div>
   </div>
   <!-- /navbar-inner -->
</div>


<!-- <div class="navbar navbar-fixed-top"> -->
<!--    <div class="navbar-inner"> -->
<!--       <div class="container" style="padding-left:25px;"> -->
<%--          <a class="brand" href="${home}" style="margin-left:5px;">Dandelion-Datatables</a> --%>
<!--          <div class="nav-collapse collapse"> -->
<!--             <ul class="nav"> -->
<%--                <li class="<tiles:getAsString name="tabBasics"/>"><a href="${basic}/home"><i class="icon-leaf"></i> Basics</a></li> --%>
<%--                <li class="<tiles:getAsString name="tabStyling"/>"><a href="${stylingUrl}/home"><i class="icon-magic"></i> Styling</a></li> --%>
<%--                <li class="<tiles:getAsString name="tabExport"/>"><a href="${export}/home"><i class="icon-file-text-alt"></i> Export</a></li> --%>
<%--                <li class="<tiles:getAsString name="tabAdvanced"/>"><a href="${advanced}/home"><i class="icon-certificate"></i> Advanced usage</a></li> --%>
<%--                <li class="<tiles:getAsString name="tabPlugins"/>"><a href="${plugins}/home"><i class="icon-plus"></i> Plugins</a></li> --%>
<!--             </ul> -->
<!--          </div> -->
<!--       </div> -->
<!--    </div> -->
<!-- </div> -->