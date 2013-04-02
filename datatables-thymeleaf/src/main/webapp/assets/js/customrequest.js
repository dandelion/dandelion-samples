function myRequest(sSource, aoData, fnCallback, oSettings) {

	oSettings.jqXHR = $.ajax({
		"dataType" : 'json',
		"type" : "GET",
		"url" : sSource,
		"data" : aoData,
		"success" : fnCallback
	});
}