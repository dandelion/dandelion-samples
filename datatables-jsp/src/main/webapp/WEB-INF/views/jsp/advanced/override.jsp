<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Override default configuration</h3>
      <p>
         By default, <strong>DataTables4j</strong> internally uses a properties file containing all needed
         configuration. But there are two ways to override it.
      </p>
      <p>
      <ul>
         <li>First, you can add a file called <strong>datatables4j.properties</strong> in your classpath, allowing
            you to redefine every property you need. Your custom global configuration will then be merged with the
            default one.
         </li>
         <li>Or you can locally override properties using the <code>prop</code> tag. Just define the property's
            name and value.
         </li>
      </ul>
      </p>
      <p>
         For instance, the compression feature is disabled by default. Thanks to the
         <code>prop</code>
         tag, you can enable it locally, just for the current table. Take a look at the generated Javascript file in the
         example shown below !
      </p>
      <br />
   </div>
</div>

<tab:tab>
   <tab:demo>
      <datatables:table id="myTableId" data="${persons}">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
         <datatables:prop name="compressor.enable" value="true" />
      </datatables:table>
   </tab:demo>
   <tab:taglib>
      <tab:code>
<datatables:table id="myTableId" data="${persons}">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
   <datatables:prop name="compressor.enable" value="true" />
</datatables:table></tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <p class="alert alert-error">
         <strong>:-(</strong><br /> Not supported yet !
      </p>
   </tab:thymeleaf>
</tab:tab>