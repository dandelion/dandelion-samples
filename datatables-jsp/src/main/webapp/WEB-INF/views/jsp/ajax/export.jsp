<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Export</h3>
      <br />
   </div>
</div>

<script>
   jQuery.download = function(url, data, method){
      
	   //data = data.aaSorting;	
	   console.log(url);
	  console.log(data); 
	   //url and data options required
      if( url && data ){ 
    	 //alert("data = " + jQuery.param(data));
         //data can be string of parameters or array/object
         data = typeof data == 'string' ? data : jQuery.param(data);
         //split params into form inputs
         var inputs = '';
         jQuery.each(data.split('&'), function(){ 
         	var pair = this.split('=');
         	inputs+='<input type="hidden" name="'+ pair[0] +'" value="'+ pair[1] +'" />'; 
         });
         //send request
         jQuery('<form action="'+ url +'" method="'+ (method||'post') +'">'+inputs+'</form>').appendTo('body').submit().remove();
      };
   };
   
   function testExportPdfOne(){
		console.log("avant");
		var cccc = oTable_myTableId.oApi._fnAjaxParameters( oTable_myTableId.fnSettings() );
		console.log(cccc);
		console.log("apres");
		window.location='/demo-datatables-jsp/export/pdf?' + $.param(cccc);
		
		//jQuery.download('/demo-datatables-jsp/export/pdf', cccc, 'get');
		/*
		$.ajax({
			type: "GET",
			dataType: "text",
			url: "/demo-datatables-jsp/personExport"
		});
		*/
	}
	function testExportPdf(){
		var cccc = oTable_myTableId.oApi._fnAjaxParameters( oTable_myTableId.fnSettings() );
		window.location='/demo-datatables-jsp/export/test?' + $.param(cccc) + '&format=pdf';
	}
	function testExportXls(){
		var cccc = oTable_myTableId.oApi._fnAjaxParameters( oTable_myTableId.fnSettings() );
		window.location='/demo-datatables-jsp/export/test?' + $.param(cccc) + '&format=xls';
	}
	function testExportPdfCNPath(){
		var cccc = oTable_myTableId.oApi._fnAjaxParameters( oTable_myTableId.fnSettings() );
		window.location='/demo-datatables-jsp/export.pdf?' + $.param(cccc) + '';
	}
	function testExportXlsCNPath(){
		var cccc = oTable_myTableId.oApi._fnAjaxParameters( oTable_myTableId.fnSettings() );
		window.location='/demo-datatables-jsp/export.xls?' + $.param(cccc) + '';
	}
	function testExportPdfCNParam(){
		var cccc = oTable_myTableId.oApi._fnAjaxParameters( oTable_myTableId.fnSettings() );
		window.location='/demo-datatables-jsp/export?' + $.param(cccc) + '&format=pdf';
	}
	function testExportXlsCNParam(){
		var cccc = oTable_myTableId.oApi._fnAjaxParameters( oTable_myTableId.fnSettings() );
		window.location='/demo-datatables-jsp/export?' + $.param(cccc) + '&format=xls';
	}
</script>

<c:url var="datasource" value="/persons2" />

<a class="btn" onclick="testExportPdfOne();" >Test export PDF (oneController)</a><br/>
<a class="btn" onclick="testExportPdf();" >Test export PDF (multiController)</a>
<a class="btn" onclick="testExportXls();" >Test export XLS (multiController)</a><br/>
<a class="btn" onclick="testExportPdfCNPath();" >Test export PDF (contentNegociation with path param)</a>
<a class="btn" onclick="testExportXlsCNPath();" >Test export XLS (contentNegociation with path param)</a><br/>
<a class="btn" onclick="testExportXlsCNParam();" >Test export PDF (contentNegociation with url param)</a>
<a class="btn" onclick="testExportXlsCNParam();" >Test export XLS (contentNegociation with url param)</a><br/>

<datatables:table id="myTableId" url="${datasource}" serverSide="true" processing="true" export="pdf">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail" property="mail" />
   <datatables:export type="pdf" cssClass="btn" url="/demo-datatables-jsp/export/pdf" />
</datatables:table>
