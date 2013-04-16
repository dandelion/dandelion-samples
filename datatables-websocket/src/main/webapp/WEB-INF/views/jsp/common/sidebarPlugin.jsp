<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/plugins" var="plugins" />

<div class="span2 bs-docs-sidebar">
   <ul class="nav nav-list bs-docs-sidenav affix">
      <li><a href="${plugins}/colreorder"><i class="icon-chevron-right"></i> ColReorder</a></li>
      <li><a href="${plugins}/scroller"><i class="icon-chevron-right"></i> Scroller</a></li>
      <li><a href="${plugins}/fixedheader"><i class="icon-chevron-right"></i> FixedHeader</a></li>
      <li><a href="${plugins}/combo"><i class="icon-chevron-right"></i> Combo !</a></li>
      <li><a href="${plugins}/comboaggreg"><i class="icon-chevron-right"></i> Using aggregation</a></li>
      <li><a href="${plugins}/comboaggregcompress"><i class="icon-chevron-right"></i> Using aggregation and compression</a></li>
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