<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Export</h3>
      <p>
         With <strong>DataTables4j</strong>, you can export your table in multiple formats.
      </p>
      <p>All plain text exports (as CSV or XML) don't require any additional dependency whereas binary ones do (as
         PDF or XLS). In this latter case, make sure the right dependency is present in the classpath.</p>
      <br />
   </div>
</div>

<div class="tabbable">
   <ul id="myTabs" class="nav nav-pills custom-pills">
      <li class="active"><a href="#example1" data-toggle="tab"><i class="icon-chevron-down"></i> CSV</a></li>
      <li><a href="#example2" data-toggle="tab"><i class="icon-chevron-down"></i> PDF</a></li>
      <li><a href="#example3" data-toggle="tab"><i class="icon-chevron-down"></i> Multiple formats</a></li>
   </ul>
   <hr />
   <div class="tab-content">
      <div class="tab-pane active" id="example1">
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
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <p>
                  To activate the export, just set the
                  <code>export</code>
                  table attribute to
                  <code>csv</code>
                  or whatever format your need among proposed ones.
               </p>
               <tab:code>
<datatables:table id="myFirstTableId" data="${persons}" row="person" export="csv">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail">
      <a href="mailto:${person.mail}">${person.mail}</a>
   </datatables:column>
</datatables:table></tab:code>
            </tab:taglib>
            <tab:thymeleaf>
               <p>
                  With Thymeleaf, just update the
                  <code>dt:export</code>
                  table attribute.
               </p>
               <tab:code>
<table id="myTable" dt:table="true" dt:export="csv">
   <thead>
      <tr>
         <th>Id</th>
         <th>Firstname</th>
         <th>Lastname</th>
         <th>City</th>
         <th>Mail</th>
      </tr>
   </thead>
   <tbody>
      <tr th:each="person : ${persons}">
         <td th:text="${person.id}">1</td>
         <td th:text="${person.firstName}">John</td>
         <td th:text="${person.lastName}">Doe</td>
         <td th:text="${person.address.town.name}">Nobody knows !</td>
         <td><a th:href="${'mailto:' + person.mail}" th:text="${person.mail}">john@doe.com</a></td>
      </tr>
   </tbody>
</table></tab:code>
            </tab:thymeleaf>
         </tab:tab>
      </div>

      <div class="tab-pane" id="example2">
         <tab:tab>
            <tab:demo>
               <datatables:table id="mySecondTableId" data="${persons}" row="person" export="pdf">
                  <datatables:column title="Id" property="id" />
                  <datatables:column title="FirstName" property="firstName" />
                  <datatables:column title="LastName" property="lastName" />
                  <datatables:column title="City" property="address.town.name" />
                  <datatables:column title="Mail">
                     <a href="mailto:${person.mail}">${person.mail}</a>
                  </datatables:column>
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <p>For PDF export, first, make sure you added either FOP or iText dependency.</p>
               <tab:code>
<dependency> 
   <groupId>com.github.datatables4j</groupId>
   <artifactId>datatables4j-export-itext</artifactId>
   <version>0.1.1</version>
</dependency></tab:code>
               <p>
                  Then, just set the
                  <code>export</code>
                  table attribute to
                  <code>pdf</code>
                  .
               </p>
               <tab:code>
<datatables:table id="mySecondTableId" data="${persons}" row="person" export="pdf">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail">
      <a href="mailto:${person.mail}">${person.mail}</a>
   </datatables:column>
</datatables:table></tab:code>
               <p>The above dependency embeds :
               <ul>
                  <li>the iText library (see the <a
                     href="https://github.com/datatables4j/datatables4j-export-itext/blob/master/pom.xml">POM</a> to
                     know which version)
                  </li>
                  <li>an export class that is used by default to export the table</li>
               </ul>
                  You can of course write your own export class and tell <strong>DataTables4j</strong> to use it using the <a
                  href="http://datatables4j.github.com/docs/ref.properties.html">properties file</a>.
               </p>

            </tab:taglib>
            <tab:thymeleaf>
               <tab:code>
<table id="myTable" dt:table="true" dt:export="pdf">
   <thead>
      <tr>
         <th>Id</th>
         <th>Firstname</th>
         <th>Lastname</th>
         <th>City</th>
         <th>Mail</th>
      </tr>
   </thead>
   <tbody>
      <tr th:each="person : ${persons}">
         <td th:text="${person.id}">1</td>
         <td th:text="${person.firstName}">John</td>
         <td th:text="${person.lastName}">Doe</td>
         <td th:text="${person.address.town.name}">Nobody knows !</td>
         <td><a th:href="${'mailto:' + person.mail}" th:text="${person.mail}">john@doe.com</a></td>
      </tr>
   </tbody>
</table></tab:code>
            </tab:thymeleaf>
         </tab:tab>
      </div>

      <div class="tab-pane" id="example3">
         <tab:tab>
            <tab:demo>
               <datatables:table id="myThirdTableId" data="${persons}" row="person" export="pdf,xls,csv">
                  <datatables:column title="Id" property="id" />
                  <datatables:column title="FirstName" property="firstName" />
                  <datatables:column title="LastName" property="lastName" />
                  <datatables:column title="City" property="address.town.name" />
                  <datatables:column title="Mail">
                     <a href="mailto:${person.mail}">${person.mail}</a>
                  </datatables:column>
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <p>
                  Finally, you can activate export in multiple formats by comma-separating them in the
                  <code>export</code>
                  table attribute.
               </p>
               <tab:code>
<datatables:table id="myThirdTableId" data="${persons}" row="person" export="pdf,xls,csv">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail">
      <a href="mailto:${person.mail}">${person.mail}</a>
   </datatables:column>
</datatables:table></tab:code>
            </tab:taglib>
            <tab:thymeleaf>
               <tab:code>
<table id="myThirdTableId" dt:table="true" dt:export="pdf,xls,csv">
   <thead>
      <tr>
         <th>Id</th>
         <th>Firstname</th>
         <th>Lastname</th>
         <th>City</th>
         <th>Mail</th>
      </tr>
   </thead>
   <tbody>
      <tr th:each="person : ${persons}">
         <td th:text="${person.id}">1</td>
         <td th:text="${person.firstName}">John</td>
         <td th:text="${person.lastName}">Doe</td>
         <td th:text="${person.address.town.name}">Nobody knows !</td>
         <td th:text="${person.mail}">john@doe.com</td>
      </tr>
   </tbody>
</table></tab:code>
            </tab:thymeleaf>
         </tab:tab>
      </div>

   </div>
</div>