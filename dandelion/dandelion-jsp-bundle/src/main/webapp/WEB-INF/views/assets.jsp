<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- configure the dandelion taglib -->
<%@ taglib prefix="dandelion" uri="http://github.com/dandelion" %>
<%@ taglib prefix="webanalytics" uri="http://github.com/dandelion/webanalytics" %>

<!DOCTYPE html>
<html>
<head>
    <title>Dandelion Assets on JSP</title>
</head>
<body>
<b>This page load the bundles "bundle1, bundle2 and bundle3" but without the "asset3".</b>
<br/><br/>
You must see some alert from loaded js assets :
<ul>
    <li>I am the Asset1 from Scope1</li>
    <li>I am the Asset2 from Scope1</li>
    <li>I am the Asset4 from Scope2</li>
    <li>I am the Asset5 from Scope3</li>
</ul>
And <span class="color-red">this text must be in red</span><br/>
And in the source, you can see an usage of <b>template</b> asset with google analytics script,<br/>
And an usage of <b>delegate content</b> asset is setup in this sample, the result is an alert with the "x-forwarded-for" header.

<!-- setup a tracker for google analytics -->
<webanalytics:tracker provider="google" token="UA-33818546-8"/>
<!--
add 'scope3' to the context but exclude 'asset3' during rendering
and render the assets from context
-->
<dandelion:assets scopes="scope3" excludedAssets="asset3"/>
</body>
</html>