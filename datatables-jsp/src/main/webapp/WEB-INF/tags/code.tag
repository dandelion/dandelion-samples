<%@ tag language="java" pageEncoding="UTF-8" body-content="tagdependent"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:doBody var="codeContent" />

<pre class="prettyprint linenums"><c:out value="${codeContent}"/></pre>