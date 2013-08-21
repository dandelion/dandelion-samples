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
         <li><a href="${basics}/sorting/naturalsort">Sorting type: natural sort</a></li>
      </ul></li>
   <li class="dropdown-submenu"><a href="#">Filtering</a>
      <ul class="dropdown-menu">
         <li><a href="${basics}/filtering/extraform">Using an extra form</a></li>
<%--          <li><a href="${basics}/filtering/number-range">Using a number range</a></li> --%>
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
         <li><a href="${basics}/paging/two_buttons">Two buttons</a></li>
      </ul></li>
   <li><a href="${basics}/appear">Changing the appearance</a></li>
   <li><a href="${basics}/content-default">Default content</a></li>
<%--    <li><a href="${basics}/autowidth">Table width</a></li> --%>
   <li><a href="${basics}/cdn">Using CDN</a></li>
   <li><a href="${basics}/customcontent">Custom column content</a></li>
   <li><a href="${basics}/implicitObject">Using implicit object</a></li>
   <li><a href="${basics}/customheader">Custom column head</a></li>
   <li class="dropdown-submenu"><a href="#">Scrolling</a>
      <ul class="dropdown-menu">
         <li><a href="${basics}/scrolling/scroll-horizontal">Horizontal scrolling</a></li>
         <li><a href="${basics}/scrolling/scroll-vertical">Vertical scrolling</a></li>
      </ul>
   </li>
   <li><a href="${basics}/multiple">Multiple tables</a></li>
</ul>
<script>
/*
function xIndexOf(Val, Str, x)  
{  
  if (x <= (Str.split(Val).length - 1)) {  
    Ot = Str.indexOf(Val);  
    if (x > 1) { for (var i = 1; i < x; i++) { var Ot = Str.indexOf(Val, Ot + 1) } }  
    return Ot;  
  } else { alert(Val + " Occurs less than " + x + " times"); return 0 }  
}  
	// Add the 'active' class to the current li element
	$(document).ready(function(){
		//var AppPath = picpath.substring(0, xIndexOf('/', PicPath, 2) + 1); 
		//alert(xIndexOf("/", document.URL, 4));
		//alert(document.location.hostname);
		//alert(document.URL);
		//alert(document.URL.indexOf("/"));
		//alert("pattern = " + document.URL.substring(xIndexOf("/", document.URL, 4) + 1, document.URL.length));
		// Get end of the current URL
		var firstlevelpattern = document.URL.substring(xIndexOf("/", document.URL, 4), document.URL.lastIndexOf("/"));
		var secondlevelpattern = document.URL.substring(xIndexOf("/", document.URL, 4), document.URL.length);
		var pattern = document.URL.substring(document.URL.lastIndexOf("/") + 1, document.URL.length);
		console.log("firstlevelpattern = ");
		console.log(firstlevelpattern);
		console.log("pattern = ");
		console.log(pattern);
		
		if($('ul.dropdown-menu')){
			// Update first-level links
			/*
			$.each($('ul.dropdown-menu > li'), function() {
				if($(this).find('a:first').attr('href').match(firstlevelpattern)){
					$(this).addClass('active');
				}
			});
			
			$.each($('ul.dropdown-menu > li'), function() {
				if($(this).find('a:first').attr('href').match(firstlevelpattern)){
					$(this).addClass('active');
				}
			});
			
			// Update other links
			
			$.each($('ul.dropdown-menu li ul.dropdown-menu li'), function() {
				if($(this).find('a:first').attr('href').match(pattern)){
					$(this).addClass('active');
				}
			});
			
		}
	});
			*/
</script>