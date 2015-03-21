function customReload() {
	alert("Custom reload!");
	oTable_myTableId.ajax.reload();
}

function myCustomParams(){
	return {
		"type" : "POST",
		"data" : { name: "John", location: "Boston" }
	};
}