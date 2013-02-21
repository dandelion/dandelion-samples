<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<c:url value="/advanced" var="advanced" />

<div class="row-fluid">
   <div class="span12">
      <h3>Compression</h3>
      <p>This example uses the YUI Compressor module to compress both Javascript and CSS code.</p>
      <p>Take a look at the generated files to see compression in action !</p>

      <p>
         <strong>DataTables4j</strong> allows you to have all your web resources minimified. <img
            src="<c:url value="/img/logo_yui_compressor.jpg" />" style="float: left; margin-right: 10px;" width="100px"
            height="30px" /> A compression module has been written, based on <strong>YUI Compressor</strong>, allowing
         you to compress both Javascript and CSS code. If you don't want to use YUI Compressor, you can also write your
         own compression module, using the compressor you want.
      </p>
      <h4>How to activate compression ?</h4>
      <p>Two things are needed to enable compression :
      <ul>

         <li>Tell <strong>DataTables4j</strong> you want to use compression :
            <ul>
               <li>Either you want all the tables in your application to be affected, so just set the property <code>compressor.enable</code>
                  of your custom properties file to <code>true</code></li>
               <li>Or you want to activate compression in a few pages only, so locally override the default
                  configuration. See <a href="${advanced}/override">how to do this</a>.
               </li>
            </ul>
         </li>

         <li>Add the YUI Compressor module (or any other compression module) to your classpath :
            <ul>
               <li>Using Maven or Maven-compatible dependency manager, just add the following dependency to your POM : 
<pre class="prettyprint">
&lt;dependency>
   &lt;groupId>com.github.datatables4j&lt;/groupId>
   &lt;artifactId>datatables4j-compression-yui&lt;/artifactId>
   &lt;version>0.3.3&lt;/version>
&lt;/dependency>
</pre>

               </li>
               <li>Manually, just grab the latest version of the module <a
                  href="http://search.maven.org/#search%7Cga%7C1%7Ca%3A%22datatables4j-compression-yui%22">here</a> and
                  all needed dependencies.
               </li>
            </ul>
         </li>

      </ul>
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