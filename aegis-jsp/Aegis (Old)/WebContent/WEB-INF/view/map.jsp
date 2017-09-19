<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="header.jsp"/>

    <script src='https://api.tiles.mapbox.com/mapbox-gl-js/v0.21.0/mapbox-gl.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox-gl-js/v0.21.0/mapbox-gl.css' rel='stylesheet' /> 
	<script src='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v1.3.0/mapbox-gl-geocoder.js'></script>
	<link rel='stylesheet' href='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v1.3.0/mapbox-gl-geocoder.css' type='text/css' />
	<link rel="stylesheet" href="https://unpkg.com/leaflet@1.0.0-rc.2/dist/leaflet.css" />
	<script src="https://unpkg.com/leaflet@1.0.0-rc.2/dist/leaflet.js"></script>
	
	<div id='map'></div>
	<div id='geocoder-container'></div>
	
	<div class='map-overlay' id='features'><h1>Data and Analytics</h1><div id='pd'></div></div>
	
	<script>
		//map setup	
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
		
		//onclick
		map.on('click', function (e) {
			  var data = map.queryRenderedFeatures(e.point);
			  
			  if (data.length > 0) 
			  {
				  if(data[0].layer.id == "MetroManilaBarangays")
				  {
					  document.getElementById('features').style.display = "block";
				      document.getElementById('pd').innerHTML = "<h3><strong>Brgy. " + data[0].properties.name + "</strong></h3><br>";	
				  }
				  else if(data[0].layer.id == "> Magnitude 7 Earthquakes" || data[0].layer.id == "Between 3.5 and 7 magnitude Earthquakes" || data[0].layer.id == "< Magnitude 3.5 Earthquakes")
				  {
					  document.getElementById('features').style.display = "block";
			      	  document.getElementById('pd').innerHTML = "<br><h4>Magnitude " + data[0].properties.magnitude + " Earthquake <br></h4><h4>Date and Time: " + data[0].properties.date + "<br><br>Location: " + data[0].properties.title + "<h4><br><h6>Source: http://www.phivolcs.dost.gov.ph/</h6>";	
				 
				  }
				  else if(data[0].layer.id == "Very High" || data[0].layer.id == "High" || data[0].layer.id == "Medium" || data[0].layer.id == "Low" || data[0].layer.id == "Very Low")
				  {
					  document.getElementById('features').style.display = "block";
			      	  document.getElementById('pd').innerHTML = "<br><h4>Region: " + data[0].properties.REGION + "<br><br>Province: " + data[0].properties.PROVINCE + "<br><br>Typhoon Risk: " + data[0].layer.id + "</h4> <br><h6>Source: http://vm.observatory.ph/</h6>";
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
	</script>
</div>

</body>
</html>