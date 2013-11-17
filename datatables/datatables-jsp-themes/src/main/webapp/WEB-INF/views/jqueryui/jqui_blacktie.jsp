<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../common/taglib.jsp" %>

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>jQuery UI theme</h3>
      <p>
         In the following example, the "black-tie" theme option has been selected.
      </p>
      <p>
         Much more theme options are available. See the <a href="http://dandelion.github.io/datatables/docs/ref/configuration#cssconfiguration">documentation</a>.
      </p>
   </div>
</div>

<datatables:table id="myTableId" data="${persons}" theme="jqueryui" themeOption="blacktie">
    <datatables:column title="Id" property="id" />
    <datatables:column title="FirstName" property="firstName" />
    <datatables:column title="LastName" property="lastName" />
    <datatables:column title="City" property="address.town.name" />
    <datatables:column title="Mail" property="mail" />
</datatables:table>