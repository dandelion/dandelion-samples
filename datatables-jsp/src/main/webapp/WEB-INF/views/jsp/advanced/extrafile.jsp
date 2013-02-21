<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Using extra file</h3>
      <p>
         There are so many possibilities with <a href="http://datatables.net">DataTables</a> it would be too bad to
         limit its configuration with the taglib attributes.
      </p>
      <p>
         That's why
         <code>datatables:extraFile</code>
         and
         <code>extraConf</code>
         tags exist and provide extension points.. Let's focus on extra file here.
      </p>
      <p>
         The
         <code>datatables:extraFile</code>
         tag allows you to specify the location of a file containing Javascript code, which will be simply appended in
         the main generated Javascript file. <br /> Depending on what you need to do, the code can be inserted at
         different locations, using the
         <code>insert</code>
         extraFile attribute. See the <a href="http://datatables4j.github.com/docs/advanced.extrafile.html">documentation</a>
         for further details.
      </p>
      <p class="alert alert-info">
         <strong>Info !</strong><br /> As many
         <code>extraFile</code>
         tags can be added inside the
         <code>datatables:table</code>
         tag.

      </p>
      <br />
   </div>
</div>

<tab:tab>
   <tab:demo>

      <p>
         Lastname filter<br /> <select class="input-medium" id="lastNameChoice">
            <option value="All">All</option>
            <option value="Carpenter">Carpenter</option>
            <option value="Holloway">Holloway</option>
            <option value="Peck">Peck</option>
            <option value="Pena">Pena</option>
            <option value="Wilder">Wilder</option>
         </select> <i class="icon-arrow-left"></i> try to change the selected item
      </p>
<c:url value='/assets/js/datatables.extraFile.js' var="totoimage"/>
      <datatables:table id="myTableId" data="${persons}">
         <datatables:column title="Id" property="id" />
         <datatables:column title="Firstname" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" sortable="false" />
         <datatables:column title="Mail" property="mail" />
         <datatables:extraFile src="/assets/js/datatables.extraFile.js" />
      </datatables:table>

   </tab:demo>
   <tab:taglib>
      <tab:code>
<p>
   Lastname filter<br /> 
   <select class="input-medium" id="lastNameChoice">
      <option value="All">All</option>
      <option value="Carpenter">Carpenter</option>
      <option value="Holloway">Holloway</option>
      <option value="Peck">Peck</option>
      <option value="Pena">Pena</option>
      <option value="Wilder">Wilder</option>
   </select>
</p>

<datatables:table id="myTableId" data="${persons}">
   <datatables:column title="Id" property="id" />
   <datatables:column title="Firstname" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" sortable="false" />
   <datatables:column title="Mail" property="mail" />
   <datatables:extraFile src="<c:url value="/js/datatables.extraFile.js" />" />
</datatables:table>
      </tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <p class="alert alert-error">
         <strong>:-(</strong><br /> Not supported yet !
      </p>
   </tab:thymeleaf>
</tab:tab>