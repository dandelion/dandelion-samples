<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Using extra file</h3>
      <br />
   </div>
</div>

<p>
<!--    Lastname filter<br />  -->
<!--    <select class="input-medium" id="lastNameChoice"> -->
<!--       <option value="All">All</option> -->
<!--       <option value="Morgan">Morgan</option> -->
<!--       <option value="Holloway">Holloway</option> -->
<!--       <option value="Peck">Peck</option> -->
<!--       <option value="Pena">Pena</option> -->
<!--       <option value="Wilder">Wilder</option> -->
<!--    </select> <i class="icon-arrow-left"></i> try to change the selected item -->
</p>

<datatables:table id="myTableId" data="${persons}" dom="lfrti0p">
   <datatables:column title="Id" property="id" />
   <datatables:column title="Firstname" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" sortable="false" />
   <datatables:column title="Mail" property="mail" />
   <datatables:extraFile src="/assets/js/datatables.extraFile.js" />
   <datatables:linkGroup id="0" cssClass="toto" cssStyle="float:left;">
       <select class="input-medium" id="lastNameChoice">
         <option value="All">All</option>
         <option value="Morgan">Morgan</option>
         <option value="Holloway">Holloway</option>
         <option value="Peck">Peck</option>
         <option value="Pena">Pena</option>
         <option value="Wilder">Wilder</option>
      </select> <i class="icon-arrow-left"></i> try to change the selected item
   </datatables:linkGroup>
</datatables:table>