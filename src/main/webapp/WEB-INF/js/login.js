$(document).ready(function() {

	$("#xlogin").hide();
	$("#xlogin").fadeIn(600);

	$('.formNotice span').click(function() {
		$("#logForm").hide();
		$("#regForm").fadeIn(500);
	});

	$('.formNotice2 span').click(function() {

		$("#regForm").hide();
		$("#logForm").slideDown(600);

	});

});