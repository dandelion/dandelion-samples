<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Customizing export links</h3>
      <br />
   </div>
</div>

<div class="tabbable">
   <ul id="myTabs" class="nav nav-pills custom-pills">
      <li class="active"><a href="#example1" data-toggle="tab"><i class="icon-chevron-down"></i> Links style</a></li>
      <li><a href="#example2" data-toggle="tab"><i class="icon-chevron-down"></i> Links position</a></li>
   </ul>
   <hr />
   <div class="tab-content">
      <div class="tab-pane active" id="example1">
         <tab:tab>
            <tab:demo>
               <datatables:table id="myFirstTableId" data="${persons}" export="csv,xml">
                  <datatables:column title="Id" property="id" />
                  <datatables:column title="FirstName" property="firstName" />
                  <datatables:column title="LastName" property="lastName" />
                  <datatables:column title="City" property="address.town.name" />
                  <datatables:column title="Mail" property="mail" />
                  <datatables:export type="csv" cssClass="btn btn-success" />
                  <datatables:export type="xml" cssClass="btn btn-info" label="XML export !" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <tab:code>
<datatables:table id="myFirstTableId" data="${persons}" export="csv,xml">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
   <datatables:export type="csv" cssClass="btn btn-success" />
   <datatables:export type="xml" cssClass="btn btn-info" label="XML export !" />
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
         <tab:tab>
            <tab:demo>
               <datatables:table id="mySecondTableId" data="${persons}" export="csv,xml" exportLinks="top_right,bottom_right">
                  <datatables:column title="Id" property="id" />
                  <datatables:column title="FirstName" property="firstName" />
                  <datatables:column title="LastName" property="lastName" />
                  <datatables:column title="City" property="address.town.name" />
                  <datatables:column title="Mail" property="mail" />
                  <datatables:export type="csv" cssClass="btn btn-info" />
                  <datatables:export type="xml" cssClass="btn btn-info" />
               </datatables:table>
            </tab:demo>
            <tab:taglib>
               <tab:code>
<datatables:table id="mySecondTableId" data="${persons}" export="csv,xml" exportLinks="top_right,bottom_right">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
   <datatables:export type="csv" cssClass="btn btn-info" />
   <datatables:export type="xml" cssClass="btn btn-info" />
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