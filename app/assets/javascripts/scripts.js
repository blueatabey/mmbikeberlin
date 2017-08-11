$(document).bind('turbolinks:load', function() {
	$(".alert-danger").html("You are not authorized to accesss this page.").fadeIn(500).delay(2000).fadeOut(500);
});