<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>AJAX source</h3>
      <p>It can be useful to populate the table using an AJAX source, let's say web service returning your entities.</p>
      <p>
         Since <a href="https://github.com/datatables4j/issues/issues?milestone=3&page=1&state=closed">v0.8.2</a>, <strong>DataTables4j</strong>
         support AJAX sources. But be aware, even if the data is obtained from the server via an AJAX call, DataTables
         will process it client-side, as for classic DOM sources. So this may be not suitable for large data sets (as
         DOM sources).
      </p>
      <p class="alert alert-info">
         <strong>Info !</strong><br />At the moment, DataTables only consumes JSON format so take care to convert data
         in this format.
      </p>
      <p>
         The following example uses server-side a Spring MVC controller, AJAX-enabled thanks to the
         <code>@ResponseBody</code>
         annotation (<a href="http://blog.springsource.org/2010/01/25/ajax-simplifications-in-spring-3-0/">available
            since Spring 3.0</a>). You can see the code <a
            href="https://github.com/datatables4j/datatables4j-live-demo/blob/master/src/main/java/com/github/datatables4j/demo/ajax/SpringMvcAjaxController.java#L37-L40">here</a>.
      </p>
      <p>
         Since Spring performs the JSON serialization using the default Jackson JSON processor, make sure to have the <a
            href="http://mvnrepository.com/artifact/org.codehaus.jackson/jackson-mapper-asl">Jackson JARs</a> in your
         classpath.
      </p>
      <br />
   </div>
</div>

<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" url="/persons" row="person">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
         <datatables:column title="Action">
            <a class="btn btn-mini" onclick="alert('$[person.id]');">Delete</a>
         </datatables:column>
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <p>
         Using JSP, be aware to fill in the
         <code>url</code>
         table attribute with your AJAX source URL.
      </p>
      <p>
      <ul>
         <li>If the value you pass in begins with a leading slash ("/"), the full request context will be prepended</li>
         <li>Otherwise, the value is left untouched</li>
      </ul>
      </p>
      <p class="alert alert-warn">
         <strong>Warning !</strong><br />Cross-domain requests are not yet supported !
      </p>
      <tab:code>
<datatables:table id="myTableId" url="/persons">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
</datatables:table></tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <p>
         Using Thymeleaf, you have to fill in the
         <code>dt:url</code>
         table attribute. The same rules apply as for JSP regarding the value you set.
      </p>
      <p>
         Moreover, you have to tell <strong>DataTables4j</strong> which property must be read from the JSON source for
         each column using the
         <code>dt:property</code>
         attribute.
      </p>
      <tab:code>
<table id="myTableId" dt:table="true" dt:url="/persons">
   <thead>
      <tr>
         <th dt:property="id">Id</th>
         <th dt:property="firstName">Firstname</th>
         <th dt:property="lastName">Lastname</th>
         <th dt:property="address.town.name">City</th>
         <th dt:property="mail">Mail</th>
      </tr>
   </thead>
</table></tab:code>
   </tab:thymeleaf>
</tab:tab>