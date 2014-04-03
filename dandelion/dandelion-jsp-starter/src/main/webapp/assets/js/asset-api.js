$(document).ready(function(){
	$('#msg')
		.html('<h3>Hey! This awesome animation comes from the asset loaded by the bundle "bundle-using-api", which has been programmatically activated</h3>')
		.fadeIn(1000)
		.fadeOut(1000)
		.fadeIn(1000)
		.fadeOut(1000)
		.fadeIn(1000);
});