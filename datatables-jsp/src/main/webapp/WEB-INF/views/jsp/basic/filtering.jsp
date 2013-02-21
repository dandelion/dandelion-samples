<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Table filtering</h3>
      <hr />
   </div>
</div>

<div class="tabbable">
   <ul id="myTabs" class="nav nav-pills custom-pills">
      <li class="active"><a href="#example1" data-toggle="tab"><i class="icon-chevron-down"></i> Global
            activation/deactivation</a></li>
      <li><a href="#example2" data-toggle="tab"><i class="icon-chevron-down"></i> Using input</a></li>
      <li><a href="#example3" data-toggle="tab"><i class="icon-chevron-down"></i> Using select boxes</a></li>
      <li><a href="#example4" data-toggle="tab"><i class="icon-chevron-down"></i> Using both !</a></li>
   </ul>
   <hr />
   <div class="tab-content">
      <div class="tab-pane active" id="example1">
         <tab:tab>
            <tab:demo>
               <datatables:table id="myTableId" data="${persons}" filter="false">
                  <datatables:column title="Id" property="id" />
                  <datatables:column title="FirstName" property="firstName" />
                  <datatables:column title="LastName" property="lastName" />
                  <datatables:column title="City" property="address.town.name" />
                  <datatables:column title="Mail" property="mail" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <p>
                  You can enable (or disable) the filtering feature using the
                  <code>filter</code>
                  table attribute.
               </p>
               <tab:code>
<datatables:table id="myTableId" data="${persons}" filter="false">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
</datatables:table></tab:code>
            </tab:taglib>
            <tab:thymeleaf>
               <p>
                  You can enable (or disable) the sort feature using the
                  <code>dt:filter</code>
                  table attribute.
               </p>
               <tab:code>
<table id="myTableId" dt:table="true" dt:filter="false">
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
      <div class="tab-pane" id="example2">
         <tab:tab>
            <tab:demo>
               <datatables:table id="mySecondTableId" data="${persons}">
                  <datatables:column title="Id" property="id" />
                  <datatables:column title="FirstName" property="firstName" filterable="true" />
                  <datatables:column title="LastName" property="lastName" filterable="true" />
                  <datatables:column title="City" property="address.town.name" filterable="true" />
                  <datatables:column title="Mail" property="mail" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <p>
                  By default, specific column filtering is disable but you can enable it using the
                  <code>filterable</code>
                  column attribute.
               </p>
               <tab:code>
<datatables:table id="mySecondTableId" data="${persons}">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" filterable="true" />
   <datatables:column title="LastName" property="lastName" filterable="true" />
   <datatables:column title="City" property="address.town.name" filterable="true" />
   <datatables:column title="Mail" property="mail" />
</datatables:table></tab:code>
            </tab:taglib>
            <tab:thymeleaf>
               <p>
                  With Thymeleaf, you can use the
                  <code>dt:filterable</code>
                  th attribute.
               </p>
               <tab:code>
<table id="mySecondTableId" dt:table="true">
   <thead>
      <tr>
         <th>Id</th>
         <th dt:filterable="true">Firstname</th>
         <th dt:filterable="true">Lastname</th>
         <th dt:filterable="true">City</th>
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
      <div class="tab-pane" id="example3">
         <p>By default, if filtering is enabled on a specific column, an input field will be added in the
            corresponding tfoot cell. But you can also use select boxes !</p>
         <tab:tab>
            <tab:demo>
<datatables:table id="myThirdTableId" data="${persons}">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" filterable="true" filterType="select" />
   <datatables:column title="LastName" property="lastName" filterable="true" filterType="select" />
   <datatables:column title="City" property="address.town.name" filterable="true" filterType="select" />
   <datatables:column title="Mail" property="mail" />
</datatables:table></tab:demo>
            <tab:taglib>
               <p>
                  Set the
                  <code>filterType</code>
                  column attribute to
                  <code>select</code>
                  to replace the input field by a select box !
               </p>
               <tab:code>
<datatables:table id="myThirdTableId" data="${persons}">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" filterable="true" filterType="select" />
   <datatables:column title="LastName" property="lastName" filterable="true" filterType="select" />
   <datatables:column title="City" property="address.town.name" filterable="true" filterType="select" />
   <datatables:column title="Mail" property="mail" />
</datatables:table></tab:code>
            </tab:taglib>
            <tab:thymeleaf>
               <p>
                  With Thympeleaf, set the
                  <code>dt:filterType</code>
                  th attribute to
                  <code>select</code>
                  .
               </p>
               <tab:code>
<table id="myThirdTableId" dt:table="true">
   <thead>
      <tr>
         <th>Id</th>
         <th dt:filterable="true" dt:filterType="select">Firstname</th>
         <th dt:filterable="true" dt:filterType="select">Lastname</th>
         <th dt:filterable="true" dt:filterType="select">City</th>
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
      <div class="tab-pane" id="example4">
         <tab:tab>
            <tab:demo>
               <datatables:table id="myFourthTableId" data="${persons}">
                  <datatables:column title="Id" property="id" filterType="number" />
                  <datatables:column title="FirstName" property="firstName" filterable="true" />
                  <datatables:column title="LastName" property="lastName" filterable="true" filterType="select" />
                  <datatables:column title="City" property="address.town.name" filterable="true" filterType="select" />
                  <datatables:column title="Mail" property="mail" filterable="true" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <tab:code>
<datatables:table id="myFourthTableId" data="${persons}">
   <datatables:column title="Id" property="id" filterType="number" />
   <datatables:column title="FirstName" property="firstName" filterable="true" />
   <datatables:column title="LastName" property="lastName" filterable="true" filterType="select" />
   <datatables:column title="City" property="address.town.name" filterable="true" filterType="select" />
   <datatables:column title="Mail" property="mail" filterable="true" />
</datatables:table></tab:code>
            </tab:taglib>
            <tab:thymeleaf>
               <tab:code>
<table id="myFourthTableId" dt:table="true">
   <thead>
      <tr>
         <th>Id</th>
         <th dt:filterable="true">Firstname</th>
         <th dt:filterable="true" dt:filterType="select">Lastname</th>
         <th dt:filterable="true" dt:filterType="select">City</th>
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