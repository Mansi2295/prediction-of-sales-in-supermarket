

<%@page import="java.util.*" %>
<%@page import="java.sql.*"%>
<%@page import="myConnection.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>Prediction of Sales in Super Market System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

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
					<li class="breadcrumb-item"><a href="index.html"><h1>Prediction of Sales in Super Market System</h1></a></li>
				</ol>
				<!--four-grids here-->

				<!--//four-grids here-->
				<!--agileinfo-grap-->
				<div class="agileinfo-grap">
					<div class="agileits-box">

						<h2>&nbsp &nbsp Update Shop</h2><br>



						<%
							Statement statement = null;
							ResultSet resultSet = null;
						%>
						<%
							String id = request.getParameter("id");
							String name = request.getParameter("nameTxt");
							String email = request.getParameter("emailTxt");
							String password = request.getParameter("passwordTxt");
							String contact = request.getParameter("contactTxt");
							String city = request.getParameter("cityTxt");

							try {
								Connection conn = DBconnect.getConnect();
								statement = conn.createStatement();
								String sql = "SELECT * FROM `shop` WHERE id= '" + id + "'";
								//statement.setString(1, );
								resultSet = statement.executeQuery(sql);

								while (resultSet.next()) {
						%>
						<form action="update_process_Shop.jsp?id=<%=resultSet.getString("id")%>" method="post">
							


							<div class="form-group row">
								<input type="hidden" name="action" value="add" /> <label
									for="inputEmail3" class="col-sm-3 form-control-label">Shop
									Name</label>
								<div class="col-sm-9">
									<input type="text" cols="7" rows="1" class="form-control"
										name="nameTxt" value="<%=resultSet.getString("name")%>" ></input>
								</div>
							</div>

							<div class="form-group row">
								<input type="hidden" name="action" value="add" /> <label
									for="inputEmail3" class="col-sm-3 form-control-label">Shop Admin Email
									</label>
								<div class="col-sm-9">
									<input type="text" cols="7" rows="1" class="form-control"
										name="emailTxt" value="<%=resultSet.getString("email")%>"></input>
								</div>
							</div>

							<div class="form-group row">
								<input type="hidden" name="action" value="add" /> <label
									for="inputEmail3" class="col-sm-3 form-control-label">Shop Admin Password</label>
								<div class="col-sm-9">
									<input type="text" cols="7" rows="1" class="form-control"
										name="passwordTxt"
										value="<%=resultSet.getString("pass")%>"></input>
								</div>
							</div>

							<div class="form-group row">
								<input type="hidden" name="action" value="add" /> <label
									for="inputEmail3" class="col-sm-3 form-control-label">
									Contact</label>
								<div class="col-sm-9">
									<input type="numbers" cols="7" rows="1" class="form-control"
										name="contactTxt" maxlength="10"
										value="<%=resultSet.getString("mob")%>"></input>
								</div>
							</div>
							
							<div class="form-group row">
								<input type="hidden" name="action" value="add" /> <label
									for="inputEmail3" class="col-sm-3 form-control-label">
									City</label>
								<div class="col-sm-9">
									<input type="text" cols="7" rows="1" class="form-control"
										name="cityTxt" 
										value="<%=resultSet.getString("city")%>"></input>
								</div>
							</div>
							<br>

							<div class="form-group mb-n">

								<center>
									<button type="submit" class="btn btn-primary">Update</button>
								</center>
							</div>
						</form>
						<%
							}
								//connection.close();
							} catch (Exception e) {
								e.printStackTrace();
							}
							
						%>




					</div>
				</div>
				<!--//agileinfo-grap-->
				<!--photoday-section-->
			</div>

			<!--//content-inner-->
			<!--/sidebar-menu-->
			<div class="sidebar-menu">
				<header class="logo1"> <a href="#" class="sidebar-icon">
					<span class="fa fa-bars"></span>
				</a> </header>
				<div style="border-top: 1px ridge rgba(255, 255, 255, 0.15)"></div>

			</div>


			<div class="sidebar-menu">
				<header class="logo1"> <a href="#" class="sidebar-icon">
					<span class="fa fa-bars"></span>
				</a> </header>
				<div style="border-top: 1px ridge rgba(255, 255, 255, 0.15)"></div>
				<div class="menu">
					<ul id="menu">
				<li><a href="welcomeAdmin.jsp"><i class="fa fa-home"></i>
						<span>Home</span></a></li>
				<li><a href="addShopAdmin.jsp"><i class="fa fa-edit"></i>
						<span>Add Shop Admin</span></a></li>
		
				<li><a href="ViewShopAdmin.jsp"><i class="fa fa-edit"></i>
						<span>View Shop Admin</span></a></li>
				
				<li><a href="index.jsp"><i class="fa fa-home"></i>
						<span>Log Out</span></a></li></ul>
				</div>
			</div>
</body>
</html>