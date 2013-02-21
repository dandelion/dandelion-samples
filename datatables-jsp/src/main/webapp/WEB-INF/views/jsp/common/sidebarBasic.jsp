<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<c:url value="/basic" var="basic" />

<div class="span2 bs-docs-sidebar">
   <ul class="nav nav-list bs-docs-sidenav affix">
      <li class=""><a href="${basic}/default"><i class="icon-chevron-right"></i> Default configuration</a></li>
      <li><a href="${basic}/appear"><i class="icon-chevron-right"></i> Changing the appearance</a></li>
      <li><a href="${basic}/info"><i class="icon-chevron-right"></i> Display table informations</a></li>
      <li><a href="${basic}/sorting"><i class="icon-chevron-right"></i> Table sorting</a></li>
      <li><a href="${basic}/filtering"><i class="icon-chevron-right"></i> Table filtering</a></li>
      <li><a href="${basic}/paging"><i class="icon-chevron-right"></i> Table paging</a></li>
      <%--<li><a href="${basic}/changingpagination"><i class="icon-chevron-right"></i> Changing pagination style</a></li> --%>
      <li><a href="${basic}/lengthchange"><i class="icon-chevron-right"></i> Table length changing</a></li>
      <li><a href="${basic}/defaultcontent"><i class="icon-chevron-right"></i> Default content</a></li>
      <%--<li><a href="${basic}/autowidth"><i class="icon-chevron-right"></i> Table width</a></li> --%>
      <li><a href="${basic}/cdn"><i class="icon-chevron-right"></i> Using CDN</a></li>
      <li><a href="${basic}/customcontent"><i class="icon-chevron-right"></i> Custom column content</a></li>
      <li><a href="${basic}/implicitObject"><i class="icon-chevron-right"></i> Using implicit object</a></li>
      <li><a href="${basic}/customheader"><i class="icon-chevron-right"></i> Custom column head</a></li>
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