//switch layers
$(document).ready(function(){
	
	/*var layerList = document.getElementById('icons');
	var inputs = layerList.getElementsByTagName('div');
	
	function switchLayer(layer) {
	    var layerId = layer.target.id;
	    
	    if(layerId == 'flood')
		{
			map.setStyle('mapbox://styles/geloko/cird4c5ql000hgfm4jyzfejab');
		}
	    if(layerId == 'storm')
		{
	    	map.setStyle('mapbox://styles/geloko/cird4bj9a000hgcnkuqrujccn');
	    	//map.setStyle('mapbox://styles/mapbox/satellite-v9');
		}
	    if(layerId == 'earthquake')
	    {
	    	map.setStyle('mapbox://styles/geloko/ciqthvpn0000fc8mbycfye3fi');
		}
	}
	
	for (var i = 0; i < inputs.length; i++) 
	{
	    inputs[i].onclick = switchLayer;
	}*/
	$("#flood").click(function(){
		if(window.location.pathname === "/Aegis/" || window.location.pathname === "/Aegis/home")
		{
			map.setStyle('mapbox://styles/geloko/cird4c5ql000hgfm4jyzfejab');
		}
	});
	
	$("#storm").click(function(){
		if(window.location.pathname === "/Aegis/" || window.location.pathname === "/Aegis/home")
		{
			map.setStyle('mapbox://styles/geloko/cird4bj9a000hgcnkuqrujccn');
		}
	});
	
	$("#earthquake").click(function(){
		if(window.location.pathname === "/Aegis/" || window.location.pathname === "/Aegis/home")
		{
			map.setStyle('mapbox://styles/geloko/ciqthvpn0000fc8mbycfye3fi');
		}
	});
	
	$("#flood").mouseenter(function(){
		if(window.location.pathname === "/Aegis/" || window.location.pathname === "/Aegis/home")
		{
			$(this).css("filter", "brightness(80%)");
			$(this).css("-webkit-filter", "brightness(80%)");
		}
	});
	
	$("#storm").mouseenter(function(){
		if(window.location.pathname === "/Aegis/" || window.location.pathname === "/Aegis/home")
		{
			$(this).css("filter", "brightness(80%)");
			$(this).css("-webkit-filter", "brightness(80%)");
		}
	});
	
	$("#earthquake").mouseenter(function(){
		if(window.location.pathname === "/Aegis/" || window.location.pathname === "/Aegis/home")
		{
			$(this).css("filter", "brightness(80%)");
			$(this).css("-webkit-filter", "brightness(80%)");
		}
	});
	
	$("#flood").mouseleave(function(){
		if(window.location.pathname === "/Aegis/" || window.location.pathname === "/Aegis/home")
		{
			$(this).css("filter", "brightness(100%)");
			$(this).css("-webkit-filter", "brightness(100%)");
		}
	});
	
	$("#storm").mouseleave(function(){
		if(window.location.pathname === "/Aegis/" || window.location.pathname === "/Aegis/home")
		{
			$(this).css("filter", "brightness(100%)");
			$(this).css("-webkit-filter", "brightness(100%)");
		}
	});
	
	$("#earthquake").mouseleave(function(){
		if(window.location.pathname === "/Aegis/" || window.location.pathname === "/Aegis/home")
		{
			$(this).css("filter", "brightness(100%)");
			$(this).css("-webkit-filter", "brightness(100%)");
		}
	});

});