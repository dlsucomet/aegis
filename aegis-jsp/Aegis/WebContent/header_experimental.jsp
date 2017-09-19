<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <title>Aegis</title>
	    <!-- Additional from Before -->
	    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
	    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	    rel="stylesheet" type="text/css">
	    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
	    rel="stylesheet" type="text/css">
	    
	    <link rel="stylesheet"href="<c:url value="/resources/css/datepicker3.css" />" >
	    <link rel="stylesheet"href="<c:url value="/resources/css/styles.css" />" >
	    <!--Icons-->
	    <script src="<c:url value="/resources/js/lumino.glyphs.js" />"></script>
	    
		<script src="<c:url value="/resources/js/login.js" />" type="text/javascript"></script>
	</head>
	<body>
	    <nav id="mainnavbar" class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin: 0;">
	    	<div class="navstyle container-fluid">
		    	<div class="navbar-header vertical-align">
		        	<!-- <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
			        	<span class="sr-only">Toggle navigation</span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
					</button> -->
					<!-- <a href="#menu-collapse" class="btn btn-default" id="menu-toggle"></a> -->
		          	<a class="navbar-brand" href="index.jsp" style="padding-left: 35px; padding-right: 35px;"><span style="font-size: 200%">Aegis</span></a>
		          	<ul id="disaster-icons" class="user-menu pull-left">
		            	<li>
			              <ul class="list-inline">
			              	<li>
			                	<div class="flood" id="flood"></div>
			                </li>
			                <li>
			                	<div class="storm" id="storm"></div>
			                </li>
			                <li>
			                	<div class="earthquake" id="earthquake"></div>
			                </li>
			              </ul>
		            	</li>
		          	</ul>
		          <!-- -->
		          	<ul class="user-menu" style="margin-left: auto;">
		          		<li class="pull-right">
			              	<ul class="list-inline">
			                	<li>
				                	<a href="#"><span style="font-size: 125%; text-transform: none">Infographics</span></a>
				                </li>
				                <li>
				                	<a href="contactNumbers.jsp"><span style="font-size: 125%; text-transform: none">Contact Numbers</span></a>
				                </li>
				                <li>
				                	<a href="#"><span style="font-size: 125%; text-transform: none">Login/Sign Up</span></a>
				                </li>
							</ul>
			          	</li>
					</ul>
		          <!--
		          	<ul class="user-menu" style="margin-left: auto;">
		            	<li class="dropdown pull-right" style="padding-left: 20px; padding-right: 20px;">
		              		<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="font-size: 150%">Menu<span class="caret"></span></a>
		              		<ul class="dropdown-menu" role="menu">
		                		<li>
				                	<a href="#"><span style="text-transform: none">Infographics</span></a>
				                </li>
				                <li>
				                	<a href="#"><span style="text-transform: none">Contact Numbers</span></a>
				                </li>
				                <li>
				                	<a href="#"><span style="text-transform: none">Login/Sign Up</span></a>
				                </li>
							</ul>
						</li>
					</ul>
				  -->
				</div>
			</div>
	      <!-- /.container-fluid -->
	    </nav>
</body></html>