<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/features" var="featuresUrl" />

<div class="span2 bs-docs-sidebar">
   <ul class="nav nav-list bs-docs-sidenav affix">
      <li><a href="${featuresUrl}/home"><i class="icon-chevron-right"></i> Home</a></li>
      <li><a href="${featuresUrl}/compressor"><i class="icon-chevron-right"></i> Compressor</a></li>
      <li><a href="${featuresUrl}/aggregator"><i class="icon-chevron-right"></i> Aggregator</a></li>
      <li><a href="${featuresUrl}/exportclassicformats"><i class="icon-chevron-right"></i> Export</a></li>
      <li><a href="${featuresUrl}/exportcustomlinks"><i class="icon-chevron-right"></i> Customed export links</a></li>
      <li><a href="${featuresUrl}/exportcustomcontent"><i class="icon-chevron-right"></i> Customed export content</a></li>
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