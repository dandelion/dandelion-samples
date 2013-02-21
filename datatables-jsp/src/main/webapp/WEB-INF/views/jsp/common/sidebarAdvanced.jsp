<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/advanced" var="advanced" />

<div class="span2 bs-docs-sidebar">
   <ul class="nav nav-list bs-docs-sidenav affix">
      <li><a href="${advanced}/rowid"><i class="icon-chevron-right"></i> Row id</a></li>
      <li><a href="${advanced}/i18n"><i class="icon-chevron-right"></i> Internationalisation</a></li>
      <li><a href="${advanced}/extrafile"><i class="icon-chevron-right"></i> Using extra file</a></li>
      <li><a href="${advanced}/extraconf"><i class="icon-chevron-right"></i> Using extra conf</a></li>
      <li><a href="${advanced}/override"><i class="icon-chevron-right"></i> Override default configuration</a></li>
      <li><a href="${advanced}/multiple"><i class="icon-chevron-right"></i> Multiple tables</a></li>
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