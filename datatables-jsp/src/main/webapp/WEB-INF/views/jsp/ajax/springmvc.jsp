<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Spring MVC integration</h3>
      <h4>Introduction</h4>
      <p>
         Since 0.8.2, a Spring3 module has been added to <strong>DataTables4j</strong>. It's a bit light at the moment
         but you can already use it if you need server-side processing
      </p>
      <p>
         Indeed, a custom annotation has been added in order to automatically map the DataTables request parameter (sent
         when server-side processing is enabled) in the
         <code>DatatablesCriterias</code>
         bean :
         <code>@DatatablesParams</code>
      </p>
      <h4>How to use it ?</h4>
      <p>First, add the new dependency :
      <pre class="prettyprint linenums">
&lt;dependency>
   &lt;groupId>com.github.datatables4j&lt;/groupId>
   &lt;artifactId>datatables4j-spring3&lt;/artifactId>
   &lt;version>0.8.2&lt;/version>
&lt;/dependency>   
</pre>
      </p>
      <p>Moreover, you need to register a new custom WebArgumentResolvers as follows :
      <pre class="prettyprint linenums">
&lt;mvc:annotation-driven>
   &lt;mvc:argument-resolvers>
      &lt;bean class="com.github.datatables4j.spring3.ajax.DatatablesCriteriasResolver" />
   &lt;/mvc:argument-resolvers>
&lt;/mvc:annotation-driven>
</pre>
      </p>
      <p>Once the dependency added, just update your Spring MVC controller as follows :
      <pre class="prettyprint linenums">
@RequestMapping(value = "/persons2")
public @ResponseBody DatatablesResponse<Person> getCustomers1(@DatatablesParams DatatablesCriterias criterias) {
   DataSet<Person> dataSet = personService.findPersonsWithDatatablesCriterias(criterias);
   return DatatablesResponse.build(dataSet, criterias);
}</pre>
      As you can see, it's just the Spring equivalent of
      <code>DatatablesCriterias.getFromRequest(HttpServletRequest request)</code>
      </p>
      <br />
   </div>
</div>

<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" url="/persons2" serverSide="true" processing="true">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <tab:code>
<datatables:table id="myTableId" url="/persons2" serverSide="true" processing="true">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
</datatables:table></tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <tab:code>
<table id="myTableId" dt:table="true" dt:url="/persons2" dt:serverside="true" dt:processing="true">
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