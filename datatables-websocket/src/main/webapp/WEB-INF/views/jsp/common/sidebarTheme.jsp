<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/themes" var="themes" />

<div class="span2 bs-docs-sidebar">
   <ul class="nav nav-list bs-docs-sidenav affix">
      <li><a href="${themes}/bootstrap2"><i class="icon-chevron-right"></i> Bootstrap 2 theme</a></li>
      <li><a href="${themes}/jqueryui"><i class="icon-chevron-right"></i> jQueryUI theme</a></li>
   </ul>
</div>

<script>
   $(document).ready(function() {
      var $window = $(window);
      $('.bs-docs-sidenav').affix({
         offset : {
            top : 40
         }
      });
   });
</script>