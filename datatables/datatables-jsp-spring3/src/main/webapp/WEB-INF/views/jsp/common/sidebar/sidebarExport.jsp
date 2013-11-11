<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/export" var="exportUrl" />

<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="display: block; position: static;">
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