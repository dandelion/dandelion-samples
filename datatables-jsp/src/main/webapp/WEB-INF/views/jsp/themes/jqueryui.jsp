<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<script src="<c:url value="/js/ga.js" />"></script>

<div class="row-fluid">
   <div class="span12">
      <h3>jQuery UI theme</h3>
      In order to activate the jQueryUI theme, just :
      <ul>
         <li>set the <code>theme</code> table attribute to <tt>jqueyrui</tt></li>
         <li>choose a <code>themeOption</code> among the 24 suported jQuery-UI themes !
         </li>
      </ul>
      <p class="alert alert-info">
         <strong>Info !</strong><br />You have to define yourself tr.odd and tr.even CSS classes. Take a look at <a
            href="http://datatables.net/ref#asStripeClasses">http://datatables.net/ref#asStripeClasses</a> !
      </p>
      <br />
   </div>
</div>

<style>
#myTabs li {
	width: 150px;
}
</style>

<div class="tabbable">

   <ul id="myTabs" class="nav nav-pills custom-pills">
      <li class="active"><a href="#example1" data-toggle="tab"><i class="icon-chevron-down"></i> Black-tie</a></li>
      <li><a href="#example2" data-toggle="tab"><i class="icon-chevron-down"></i> Blitzer</a></li>
      <li><a href="#example3" data-toggle="tab"><i class="icon-chevron-down"></i> Cupertino</a></li>
      <li><a href="#example4" data-toggle="tab"><i class="icon-chevron-down"></i> Dark-hive</a></li>
      <li><a href="#example5" data-toggle="tab"><i class="icon-chevron-down"></i> Dot-luv</a></li>
      <li><a href="#example6" data-toggle="tab"><i class="icon-chevron-down"></i> EggPlant</a></li>
      <li><a href="#example7" data-toggle="tab"><i class="icon-chevron-down"></i> Excite-bike</a></li>
      <li><a href="#example8" data-toggle="tab"><i class="icon-chevron-down"></i> Flick</a></li>
      <li><a href="#example9" data-toggle="tab"><i class="icon-chevron-down"></i> Hot-sneaks</a></li>
      <li><a href="#example10" data-toggle="tab"><i class="icon-chevron-down"></i> Humanity</a></li>
      <li><a href="#example11" data-toggle="tab"><i class="icon-chevron-down"></i> Le-frog</a></li>
      <li><a href="#example12" data-toggle="tab"><i class="icon-chevron-down"></i> Mint-choc</a></li>
      <li><a href="#example13" data-toggle="tab"><i class="icon-chevron-down"></i> Overcast</a></li>
      <li><a href="#example14" data-toggle="tab"><i class="icon-chevron-down"></i> Pepper-grinder</a></li>
      <li><a href="#example15" data-toggle="tab"><i class="icon-chevron-down"></i> Redmond</a></li>
      <li><a href="#example16" data-toggle="tab"><i class="icon-chevron-down"></i> Smoothness</a></li>
      <li><a href="#example17" data-toggle="tab"><i class="icon-chevron-down"></i> South-street</a></li>
      <li><a href="#example18" data-toggle="tab"><i class="icon-chevron-down"></i> Start</a></li>
      <li><a href="#example19" data-toggle="tab"><i class="icon-chevron-down"></i> Sunny</a></li>
      <li><a href="#example20" data-toggle="tab"><i class="icon-chevron-down"></i> Swanky-purse</a></li>
      <li><a href="#example21" data-toggle="tab"><i class="icon-chevron-down"></i> Trontastic</a></li>
      <li><a href="#example22" data-toggle="tab"><i class="icon-chevron-down"></i> UI-Darkness</a></li>
      <li><a href="#example23" data-toggle="tab"><i class="icon-chevron-down"></i> UI-Lightness</a></li>
      <li><a href="#example24" data-toggle="tab"><i class="icon-chevron-down"></i> Vader</a></li>
   </ul>
   <hr />
   <div class="tab-content">
      <div class="tab-pane active" id="example1">
         <iframe src="jqui_blacktie" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example2">
         <iframe src="jqui_blitzer" style="border: 0;" height="500px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example3">
         <iframe src="jqui_cupertino" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example4">
         <iframe src="jqui_darkhive" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example5">
         <iframe src="jqui_dotluv" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example6">
         <iframe src="jqui_eggplant" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example7">
         <iframe src="jqui_excitebike" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example8">
         <iframe src="jqui_flick" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example9">
         <iframe src="jqui_hotsneaks" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example10">
         <iframe src="jqui_humanity" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example11">
         <iframe src="jqui_lefrog" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example12">
         <iframe src="jqui_mintchoc" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example13">
         <iframe src="jqui_overcast" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example14">
         <iframe src="jqui_peppergrinder" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example15">
         <iframe src="jqui_redmond" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example16">
         <iframe src="jqui_smoothness" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example17">
         <iframe src="jqui_southstreet" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example18">
         <iframe src="jqui_start" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example19">
         <iframe src="jqui_sunny" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example20">
         <iframe src="jqui_swankypurse" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example21">
         <iframe src="jqui_trontastic" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example22">
         <iframe src="jqui_uidarkness" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example23">
         <iframe src="jqui_uilightness" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
      <div class="tab-pane" id="example24">
         <iframe src="jqui_vader" style="border: 0;" height="2540px" width="100%"></iframe>
      </div>
   </div>
</div>