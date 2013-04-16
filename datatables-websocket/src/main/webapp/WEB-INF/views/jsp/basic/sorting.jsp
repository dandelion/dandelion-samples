<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Table sorting</h3>
      <br />
   </div>
</div>

<div class="tabbable">
   <ul id="myTabs" class="nav nav-pills custom-pills">
      <li class="active"><a href="#example1" data-toggle="tab"><i class="icon-chevron-down"></i> Global sorting
            activation/deactivation</a></li>
      <li><a href="#example2" data-toggle="tab"><i class="icon-chevron-down"></i> Individual column sorting</a></li>
      <li><a href="#example3" data-toggle="tab"><i class="icon-chevron-down"></i> Column sorting initialisation</a></li>
      <li><a href="#example4" data-toggle="tab"><i class="icon-chevron-down"></i> Sorting direction control</a></li>
   </ul>
   <hr />
   <div class="tab-content">
      <div class="tab-pane active" id="example1">
         <tab:tab>
            <tab:demo>
               <datatables:table id="myTableId" data="${persons}" sort="false">
                  <datatables:column title="Id" property="id" />
                  <datatables:column title="FirstName" property="firstName" />
                  <datatables:column title="LastName" property="lastName" />
                  <datatables:column title="City" property="address.town.name" />
                  <datatables:column title="Mail" property="mail" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <tab:code>
<datatables:table id="myTableId" data="${persons}" sort="false">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
</datatables:table></tab:code>
            </tab:taglib>
            <tab:thymeleaf>
               <tab:code>
<table id="myTable" dt:table="true" dt:sort="false">
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
                  <datatables:column title="Id" property="id" sortable="false" />
                  <datatables:column title="FirstName" property="firstName" />
                  <datatables:column title="LastName" property="lastName" />
                  <datatables:column title="City" property="address.town.name" />
                  <datatables:column title="Mail" property="mail" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <tab:code>
<datatables:table id="mySecondTableId" data="${persons}">
   <datatables:column title="Id" property="id" sortable="false" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" sortable="false" />
</datatables:table></tab:code>
            </tab:taglib>
            <tab:thymeleaf>
               <tab:code>
<table id="mySecondTableId" dt:table="true">
   <thead>
      <tr>
         <th dt:sortable="false">Id</th>
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
      <div class="tab-pane" id="example3">
         <tab:tab>
            <tab:demo>
               <datatables:table id="myThirdTableId" data="${persons}">
                  <datatables:column title="Id" property="id" sortable="false" />
                  <datatables:column title="FirstName" property="firstName" sortInit="desc" />
                  <datatables:column title="LastName" property="lastName" sortInit="desc" />
                  <datatables:column title="City" property="address.town.name" />
                  <datatables:column title="Mail" property="mail" sortable="false" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <tab:code>
<datatables:table id="myThirdTableId" data="${persons}">
   <datatables:column title="Id" property="id" sortable="false" />
   <datatables:column title="FirstName" property="firstName" sortInit="desc" />
   <datatables:column title="LastName" property="lastName" sortInit="desc" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" sortable="false" />
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
         <tab:tab>
            <tab:demo>
               <datatables:table id="myFourthTableId" data="${persons}">
                  <datatables:column title="Id" property="id" sortable="false" />
                  <datatables:column title="FirstName" property="firstName" />
                  <datatables:column title="LastName" property="lastName" />
                  <datatables:column title="City" property="address.town.name" sortDirection="asc" />
                  <datatables:column title="Mail" property="mail" sortDirection="desc" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <tab:code>
<datatables:table id="myFourthTableId" data="${persons}">
   <datatables:column title="Id" property="id" sortable="false" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" sortDirection="asc" />
   <datatables:column title="Mail" property="mail" sortDirection="desc" />
</datatables:table>
               </tab:code>
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