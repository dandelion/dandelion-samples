<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- configure the dandelion taglib -->
<%@ taglib prefix="dandelion" uri="http://github.com/dandelion" %>

<!DOCTYPE html>
<html>
<head>
    <title>Dandelion Assets on JSP</title>
</head>
<body>
<b>This page load scopes "scope1, scope2 and scope3" but without "asset3".</b>
<br/><br/>
You must see some alert from loaded js assets :
<ul>
    <li>I am the Asset1 from Scope1</li>
    <li>I am the Asset2 from Scope1</li>
    <li>I am the Asset4 from Scope2</li>
    <li>I am the Asset5 from Scope3</li>
</ul>
<!--
add 'scope3' to the context but exclude 'asset3' during rendering
and render the assets from context
-->
<dandelion:assets scopes="scope3" excludedAssets="asset3"/>
</body>
</html>