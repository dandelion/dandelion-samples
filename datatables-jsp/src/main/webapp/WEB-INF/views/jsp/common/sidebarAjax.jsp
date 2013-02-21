<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/ajax" var="ajax" />

<div class="span2 bs-docs-sidebar">
   <ul class="nav nav-list bs-docs-sidenav affix">
      <li><a href="${ajax}/ajaxsource"><i class="icon-chevron-right"></i> AJAX source</a></li>
      <li><a href="${ajax}/nullvalue"><i class="icon-chevron-right"></i> Handling null/default values</a></li>
      <li><a href="${ajax}/serverside"><i class="icon-chevron-right"></i> Server-side processing</a></li>
      <li><a href="${ajax}/springmvc"><i class="icon-chevron-right"></i> Spring MVC integration</a></li>
      <%--<li><a href="${ajax}/springdatarest"><i class="icon-chevron-right"></i> Spring Data REST integration</a></li> --%>
      <li><a href="${ajax}/pipeliningdata"><i class="icon-chevron-right"></i> Pipelining data</a></li>
      <%--<li><a href="${ajax}/jsonp"><i class="icon-chevron-right"></i> JSONP</a></li> --%>
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