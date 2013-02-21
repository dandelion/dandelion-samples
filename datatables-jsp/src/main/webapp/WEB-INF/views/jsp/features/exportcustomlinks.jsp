<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Customizing export links</h3>
      <p>By defaut, export links are a bit ugly but you can of course customize them to fit your needs.</p>
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
               <p>
                  You can use the
                  <code>datatables:export</code>
                  tag to customize the export links. This tag allows you to configure one type of export.
               </p>
               <p>Using this tag, you can for instance add CSS classes to the links or change the link's label</p>
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
               <p>
                  Depending on your needs, you may want to move links around the table. You can do it using the
                  <code>exportLinks</code>
                  table attribute.
               </p>
               <p>This attribute makes reading data easier by repeating links at different positions.</p>
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