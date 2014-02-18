<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url var="reloadUrl" value="/scope" />

<!DOCTYPE html>
<html>
<head>
<jsp:include page="common/head.jsp" />
</head>
<body>

   <jsp:include page="common/navbar.jsp" />

   <div class="container">
      <div class="row-fluid">
         <div class="span12">
            <h2>Asset stack</h2>
            <p>This example allows you to visualize and interact with the current asset stack.</p>
         </div>
      </div>
      
      <div class="row-fluid">
         <div class="span6">
            <p>
               You can use the opposite list to dynamically load pre-configured scopes and reload the asset stack (lien).
            </p>
         </div>
         <div class="span6">
            <form class="navbar-form pull-left" action="${reloadUrl}" method="post">
               <select name="newScope">
                  <option value="">Select a scope to add</option>
                  <option value="scope1">Scope 1</option>
                  <option value="scope2">Scope 2</option>
                  <option value="scope3">Scope 3</option>
               </select>
               <button type="submit" class="btn">Add the scope</button>
            </form>
         </div>
      </div>

      <div class="row-fluid">
         <div class="span12">
            <h3>Loaded scopes</h3>
            <ul>
               <c:forEach var="scope" items="${loadedScopes}">
                  <li><c:out value="${scope}" /></li>
               </c:forEach>
            </ul>
         </div>
      </div>

      <div class="row-fluid">
         <div class="span12">
            <h3>Loaded assets in the current page</h3>
            <table class="table table-striped table-bordered">
               <thead>
                  <tr>
                     <th>Name</th>
                     <th>Version</th>
                     <th>Type</th>
                     <th>Location(s)</th>
                  </tr>
               </thead>
               <tbody>
                  <c:forEach var="asset" items="${loadedAssets}">
                     <tr>
                        <td><c:out value="${asset.name}" /></td>
                        <td><c:out value="${asset.version}" /></td>
                        <td><c:out value="${asset.type}" /></td>
                        <td><c:out value="${asset.locations}" /></td>
                     </tr>
                  </c:forEach>
               </tbody>
            </table>
         </div>
      </div>

      <div class="row-fluid" id="scope1" style="display:none;">
         <div class="span12 alert alert-success">
            <h3>The scope1 has been loaded!</h3>
         </div>
      </div>
      
      <div class="row-fluid" id="scope2" style="display:none;">
         <div class="span12 alert alert-success">
            <h3>The scope2 has been loaded!</h3>
         </div>
      </div>
      
      <div class="row-fluid" id="scope3" style="display:none;">
         <div class="span12 alert alert-success">
            <h3>The scope3 has been loaded!</h3>
         </div>
      </div>
      
   </div>
</body>
</html>