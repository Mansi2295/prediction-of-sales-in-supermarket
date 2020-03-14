<%@page import="java.util.*" %>
<%@page import="java.sql.*"%>
<%@page import="myConnection.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Prediction of Sales in Super Market System </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>

<style>
body {
  font-family: Arial;
}

* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 40%;
  background: #f1f1f1;
  margin-left: 390px;
 
}

form.example button {
  float: left;
  width: 5%;
  padding: 10px;
  background: #5F9EA0;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
  margin-top: -40px;
}

form.example button:hover {
  background: #4A777A;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}

body .heading1 {
background-image: linear-gradient(to left, violet, indigo, blue, green, yellow, orange,
red);
-webkit-background-clip: text;
-moz-background-clip: text;
background-clip: text;
color: transparent;
}
.heading2 {
background-image: linear-gradient(to left, violet, indigo, blue, green, yellow, orange,
red);
-webkit-background-clip: text;
-moz-background-clip: text;
background-clip: text;
color: transparent;
}
</style>





<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/morris.css" type="text/css" />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<script src="js/jquery-2.1.4.min.js"></script>
<!-- //jQuery -->
<link
	href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400'
	rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
</head>

<body>
	<div class="page-container">
		<!--/content-inner-->
		<div class="left-content">
			<div class="mother-grid-inner">
				<!--header start here-->
		
				<!--heder end here-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html"><h1>Prediction of Sales in Super Market System </h1></a> </li>
				</ol>
				<!--four-grids here-->

				<!--//four-grids here-->
				<!--agileinfo-grap-->
				<div class="agileinfo-grap">
					<div class="agileits-box">
		
					
					<div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
         		<h2>&nbsp; &nbsp; Generate Bill</h2><br>
           <div class="col-md-12">
                    
                    
                    			
								
								<!--  <div class="form-group row">
								<input type="hidden" name="action" value="add" /> <label
									for="inputEmail3" class="col-sm-3 form-control-label">
									Mobile Number :</label>
								<div class="col-sm-9">
								<input type="numbers" cols="7" rows="1" class="form-control"
										name="priseTxt"  id="myInput" oninput="myFunction()"></input>
								</div>
								</div>
								
								
							<div class="form-group row">
                			<input type="hidden" name="action" value="add"/>
    						<label for="inputEmail3" class="col-sm-3 form-control-label">Temperature :</label>
                	  		<div class="col-sm-2" style = "display:inline;">
                    		<input type="text" cols="3" class="form-control" name="lowtemp" required></input></div>
                    		<div class="col-sm-2" style = "display:inline; margin-left: 150px;">
                    		<input type="text" cols="3" class="form-control" name="hightemp" required></input>
                 			</div>
               			 	</div>
								
							</div><br><br><br><br><br><br><br><br> -->
							
					
						
						
						<form action="url.jsp" method="post" class="example" >
  <input type="text" placeholder="Search.." name="search" style="margin-top: -40px;">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>




				                          
						          
			</div>
         		</div>
                   
                </div>
                                       
	 </div>	
		
						
					</div>
			</div>
		</div>
		<!--//content-inner-->
		<!--/sidebar-menu-->
		<div class="sidebar-menu">
			<header class="logo1">
				<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span>
				</a>
			</header>
			<div style="border-top: 1px ridge rgba(255, 255, 255, 0.15)"></div>
			
		</div>
		
	</div>
			<div class="sidebar-menu">
		<header class="logo1">
			<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span>
			</a>
		</header>
<div style="border-top: 1px ridge rgba(255, 255, 255, 0.15)"></div>
		<div class="menu">
			<!-- <ul id="menu">
				<li><a href="welcomeAdmin.jsp"><i class="fa fa-home"></i>
						<span>Home</span></a></li>
						
				<li><a href="addProduct.jsp"><i class="fa fa-edit"></i>
						<span>Add Product</span></a></li>
		
				<li><a href="ViewProduct.jsp"><i class="fa fa-edit"></i>
						<span>View Product</span></a></li>
						
						<li><a href="generateBill.jsp"><i class="fa fa-edit"></i>
						<span>Generate Bill</span></a></li>
				
				<li><a href="index.jsp"><i class="fa fa-home"></i>
						<span>Log Out</span></a></li></ul> -->
		</div>
		
		
	      
</div>

</html>