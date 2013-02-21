<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Customizing export content</h3>
      <br />
   </div>
</div>

<div class="tabbable">
   <ul id="myTabs" class="nav nav-pills custom-pills">
      <li class="active"><a href="#example1" data-toggle="tab"><i class="icon-chevron-down"></i> No header (all
            formats)</a></li>
      <li><a href="#example2" data-toggle="tab"><i class="icon-chevron-down"></i> Column auto-sizing (only
            XLS/XLSX)</a></li>
      <li><a href="#example3" data-toggle="tab"><i class="icon-chevron-down"></i> Hide columns (all formats)</a></li>
      <li><a href="#example4" data-toggle="tab"><i class="icon-chevron-down"></i> Adapt column's content (all
            formats)</a></li>
   </ul>
   <hr />
   <div class="tab-content">
      <div class="tab-pane active" id="example1">
         <p>
            In this example, the table header doesn't appear in export thanks to the
            <code>includeHeader</code>
            export attribute, set to
            <code>false</code>
            .
         </p>
         <tab:tab>
            <tab:demo>
               <datatables:table id="myFirstTableId" data="${persons}" row="person" export="csv">
                  <datatables:column title="Id" property="id" />
                  <datatables:column title="FirstName" property="firstName" />
                  <datatables:column title="LastName" property="lastName" />
                  <datatables:column title="City" property="address.town.name" />
                  <datatables:column title="Mail">
                     <a href="mailto:${person.mail}">${person.mail}</a>
                  </datatables:column>
                  <datatables:export type="csv" includeHeader="false" fileName="my-export-name" cssClass="btn"
                     label="CSV without header row" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <tab:code>
<datatables:table id="myFirstTableId" data="${persons}" row="person" export="csv">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail">
      <a href="mailto:${person.mail}">${person.mail}</a>
   </datatables:column>
   <datatables:export type="csv" includeHeader="false" fileName="my-export-name" cssClass="btn" label="CSV without header row" />
</datatables:table></tab:code>
            </tab:taglib>
            <tab:thymeleaf>
               <p class="alert alert-error">
                  <strong>:-(</strong><br /> Not supported yet !
               </p>
            </tab:thymeleaf>
         </tab:tab>
      </div>
      <div class="tab-pane" id="example2">
         <p>
            For XLS and XLSX export formats, you can tell DataTables4j to auto-size columns using the
            <code>autoSize</code>
            export attribute.
         </p>
         <tab:tab>
            <tab:demo>
               <datatables:table id="mySecondTableId" data="${persons}" row="person" export="xls">
                  <datatables:column title="Id" property="id" />
                  <datatables:column title="FirstName" property="firstName" />
                  <datatables:column title="LastName" property="lastName" />
                  <datatables:column title="City" property="address.town.name" />
                  <datatables:column title="Mail">
                     <a href="mailto:${person.mail}">${person.mail}</a>
                  </datatables:column>
                  <datatables:export type="XLS" autoSize="true" fileName="my-export-name" cssClass="btn" label="XLS" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <tab:code>
<datatables:table id="mySecondTableId" data="${persons}" row="person" export="xls">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail">
      <a href="mailto:${person.mail}">${person.mail}</a>
   </datatables:column>
   <datatables:export type="XLS" autoSize="true" fileName="my-export-name" cssClass="btn" label="XLS" />
</datatables:table></tab:code>
            </tab:taglib>
            <tab:thymeleaf>
               <p class="alert alert-error">
                  <strong>:-(</strong><br /> Not supported yet !
               </p>
            </tab:thymeleaf>
         </tab:tab>
      </div>
      <div class="tab-pane" id="example3">
         <p>
            The
            <code>display</code>
            column attribute allows you to configure different exported content for a column. By default, all columns
            are exported in all formats but you can specify that a column will only appear in a few formats.
         </p>
         <p>In the following example, the "City" column only appears in HTML, not in exports.</p>
         <tab:tab>
            <tab:demo>
               <datatables:table id="myThirdTableId" data="${persons}" row="person" export="xls">
                  <datatables:column title="Id" property="id" />
                  <datatables:column title="FirstName" property="firstName" />
                  <datatables:column title="LastName" property="lastName" />
                  <datatables:column title="City" property="address.town.name" display="html" />
                  <datatables:column title="Mail" display="html">
                     <a href="mailto:${person.mail}">${person.mail}</a>
                  </datatables:column>
                  <datatables:column title="Mail" property="mail" display="csv,xls" />
                  <datatables:export type="xls" includeHeader="true" fileName="my-export-name" cssClass="btn" label="xls" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <tab:code>
<datatables:table id="myThirdTableId" data="${persons}" row="person" export="xls">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" display="html" />
   <datatables:column title="Mail" display="html">
      <a href="mailto:${person.mail}">${person.mail}</a>
   </datatables:column>
   <datatables:column title="Mail" property="mail" display="csv,xls" />
   <datatables:export type="xls" includeHeader="true" fileName="my-export-name" cssClass="btn" label="xls" />
</datatables:table></tab:code>
            </tab:taglib>
            <tab:thymeleaf>
               <p class="alert alert-error">
                  <strong>:-(</strong><br /> Not supported yet !
               </p>
            </tab:thymeleaf>
         </tab:tab>
      </div>
      <div class="tab-pane" id="example4">
         <p>
            Thanks to the
            <code>display</code>
            column attribute, you can choose what content to appear in different formats.
         </p>
         <p>In the following example, we don't want HTML code to be displayed in the exported "Mail" column.</p>
         <tab:tab>
            <tab:demo>
               <datatables:table id="myFourthTableId" data="${persons}" row="person" export="pdf">
                  <datatables:column title="Id" property="id" />
                  <datatables:column title="FirstName" property="firstName" />
                  <datatables:column title="LastName" property="lastName" />
                  <datatables:column title="City" property="address.town.name" />
                  <datatables:column title="Mail" display="html">
                     <a href="mailto:${person.mail}">${person.mail}</a>
                  </datatables:column>
                  <datatables:column title="Mail" property="mail" display="csv,xls,pdf" />
                  <datatables:export type="xls" includeHeader="true" fileName="my-export-name" cssClass="btn" />
                  <datatables:export type="pdf" includeHeader="true" fileName="my-export-name" cssClass="btn" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <tab:code>
<datatables:table id="myFourthTableId" data="${persons}" row="person" export="pdf">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" display="html">
      <a href="mailto:${person.mail}">${person.mail}</a>
   </datatables:column>
   <datatables:column title="Mail" property="mail" display="csv,xls,pdf" />
   <datatables:export type="xls" includeHeader="true" fileName="my-export-name" cssClass="btn" />
   <datatables:export type="pdf" includeHeader="true" fileName="my-export-name" cssClass="btn" />
</datatables:table></tab:code>
            </tab:taglib>
            <tab:thymeleaf>
               <p class="alert alert-error">
                  <strong>:-(</strong><br /> Not supported yet !
               </p>
            </tab:thymeleaf>
         </tab:tab>
      </div>
   </div>
</div>