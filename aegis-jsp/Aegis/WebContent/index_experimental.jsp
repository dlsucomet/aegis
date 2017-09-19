<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<jsp:include page="header.jsp"></jsp:include>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Aegis</title>
		<link rel="stylesheet" href="<c:url value="/resources/css/datepicker3.css" />" >
		<link rel="stylesheet" href="<c:url value="/resources/css/styles.css" />" >
		<script src="<c:url value="/resources/js/lumino.glyphs.js" />"></script>
		
		<!-- For Map -->
		<script src='https://api.tiles.mapbox.com/mapbox-gl-js/v0.21.0/mapbox-gl.js'></script>
		<link href='https://api.tiles.mapbox.com/mapbox-gl-js/v0.21.0/mapbox-gl.css' rel='stylesheet' /> 
		<script src='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v1.3.0/mapbox-gl-geocoder.js'></script>
		<link rel='stylesheet' href='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v1.3.0/mapbox-gl-geocoder.css' type='text/css' />
		<link rel="stylesheet" href="https://npmcdn.com/leaflet@1.0.0-rc.2/dist/leaflet.css" />
		<script src="https://npmcdn.com/leaflet@1.0.0-rc.2/dist/leaflet.js"></script>
	</head>
  
	<body>
		<div class="wrapper">
			<div id="navwrapper" class="navwrapper"></div>
		    <div class="row row-offcanvas row-offcanvas-left">
		        <!-- sidebar -->
		        <div id="sidebar-collapse"  class="sidebar ">
			        <div id='geocoder-container'></div>
					<!--
						<ul class="nav menu">
							<li>
								<a href="#">
									<svg class="glyph stroked dashboard-dial">
										<use xlink:href="#stroked-dashboard-dial" xmlns:xlink="http://www.w3.org/1999/xlink"></use>
									</svg>
								A</a>
							</li>
			        </ul> -->
					<div class='map-overlay' id='features'>
						<h2>Data and Analytics</h2>
						<div id='pd'></div>
			        </div>
		        </div>
		        <!-- /sidebar -->
		        <!-- main right col -->
		        <div class="column col-sm-9 col-xs-11" id="main">
		            <a href="#" data-toggle="offcanvas"><i class="fa fa-navicon fa-2x"></i></a>
		        </div>
		    </div>
		</div>
		<div id="wholemap">
			<div id='map'></div>
		</div>
	</body>
	<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <script>
		  /*!function ($)
	      {
	    	  $(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
	          }); 
	          $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
	      }(window.jQuery);
	            
	      $(window).on('resize', function () {
	      	if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
	      })
	      $(window).on('resize', function () {
	      	if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
	      })*/
	      
	      $(document).ready(function() {

	    	  var wrapperPlacement = $('#mainnavbar').position().top + $('#mainnavbar').height();
			  $('#navwrapper').css('top', wrapperPlacement + 'px');
			  
	    	  var navbarPlacement = $('#navwrapper').position().top + $('#navwrapper').height();
			  $('#sidebar-collapse').css('top', navbarPlacement + 'px');
			  
			  $('#wholemap').css('top', navbarPlacement + 'px');
	          $("#wrapper").toggleClass("toggled");
		  });
	      
	      $("#menu-toggle").click(function(e) {
	          e.preventDefault();
	          $("#wrapper").toggleClass("toggled");
	      });
	      
	      
	 </script>
	 <script>
		 mapboxgl.accessToken = 'pk.eyJ1IjoiZ2Vsb2tvIiwiYSI6ImNpcXRodjFtbzAwNHBnMm5oMG44ODNkNG8ifQ.S-yhFFEeGzplgbc_EXPkvg';
			
			var map = new mapboxgl.Map({
			    container: 'map', // container id
			    style: 'mapbox://styles/geloko/ciqthvpn0000fc8mbycfye3fi'
			   
			});
			
			var geocoder = new mapboxgl.Geocoder({
			    container: 'geocoder-container' // Optional. Specify a unique container for the control to be added to.
			});
		
			map.addControl(geocoder);
			
			map.on('load', function() {
				  // the rest of the code will go in here
			      document.getElementById('features').style.display = "none";
				  
				});
			
			map.on('click', function (e) {
				  var data = map.queryRenderedFeatures(e.point);
				  
				  if (data.length > 0) 
				  {
					  if(data[0].layer.id == "Metro Manila Barangays")
					  {
						  document.getElementById('features').style.display = "block";
					      document.getElementById('pd').innerHTML = "<h3><strong>Brgy. " + data[0].properties.name + "</strong></h3><br>";	
					  }
					  else if(data[0].layer.id == "> Magnitude 7 Earthquakes" || data[0].layer.id == "Between 3.5 and 7 magnitude Earthquakes" || data[0].layer.id == "< Magnitude 3.5 Earthquakes")
					  {
						  document.getElementById('features').style.display = "block";
				      	  document.getElementById('pd').innerHTML = "<h3><strong>" + data[0].properties.magnitude + " Magnitude Earthquake </br><br></strong></h3><h4>" + data[0].properties.title + "<br><br>" + data[0].properties.date + "<h4>";	
					 
					  }
					  else
					  {
					  	  //document.getElementById('features').style.display = "block";
				      	  //document.getElementById('pd').innerHTML = JSON.stringify(data, null, 2);
					      document.getElementById('features').style.display = "none";	
					  }
					  
				  } else 
				  {
				      document.getElementById('features').style.display = "none";
				  }
				});
			
			//switch layers
			var layerList = document.getElementById('disaster-icons');
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
			
			for (var i = 0; i < inputs.length; i++) {
			    inputs[i].onclick = switchLayer;
			}
	</script>
</html>