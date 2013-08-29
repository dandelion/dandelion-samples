<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:url value="/basics" var="basics" />
<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="display: block; position: static;">
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