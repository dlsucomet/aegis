$(document).ready(function(){

	$("#login-button").click(function(){
		$("#login").css("display", "block");
		$("#signup").css("display", "none");
		$("#content").css("opacity", "0.3");
		$("#content").css("pointer-events", "none");
	});
	
	$("#signup-button").click(function()
	{
		$("#signup").css("display", "block");
		$("#login").css("display", "none");
		$("#content").css("opacity", "0.3");
		$("#content").css("pointer-events", "none");
	});
	
	$(".cancel").click(function(){
		$("#login").css("display", "none");
		$("#signup").css("display", "none");
		$("#content").css("pointer-events", "auto");
		$("#content").css("opacity", "1");
	});
	
});