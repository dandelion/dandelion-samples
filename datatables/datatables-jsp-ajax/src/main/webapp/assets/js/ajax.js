function myRequest(sSource, aoData, fnCallback, oSettings) {
	oSettings.jqXHR = $.ajax({
		"dataType" : 'json',
		"type" : "GET",
		"url" : sSource,
		"data" : aoData,
		"success" : function(json){
			fnCallback(json);
			$('<div id="msg" style="display:none;"><p>This message has been added in the success callback.<br />' + json.aaData.length + ' entries have been loaded.</p></div>').insertBefore($('#myTableId_wrapper'));
			$('#msg').slideDown(2000);
		}
	});
}

function customReload() {
	alert("Custom reload!");
	oTable_myTableId.fnReloadAjax();
}