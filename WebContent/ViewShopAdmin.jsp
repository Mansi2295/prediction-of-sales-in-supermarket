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
         		<h2>&nbsp &nbspView Shop Admin</h2><br>
           <div class="col-md-12">
                                              
						<table border="1" id="displaytable" class="table table-bordered" style="display.none" >
								          <thead>
								          <tr>
								          				<th>ID</th>
								        			    <th>Name</th>
														<th>Email</th>
														<th>Contact</th>
														<th>City</th>
														
														<th>Update Action</th>
														<th>Delete Action</th>
													
								          </tr>
								          <% 
                                          Statement statement = null;
                                          ResultSet resultSet = null;
                                          %>
                                          <%
                                          try{
                                          Connection conn=DBconnect.getConnect();
                                          statement=conn.createStatement();
                                          String sql ="select * from shop";
                                          resultSet = statement.executeQuery(sql);
                                          while(resultSet.next()){
                                          %>
                                          <tbody>
                                                   <tr>
                                                   <td><%=resultSet.getString(1) %></td>
                                                   <td><%=resultSet.getString(2) %></td>
                                                   <td><%=resultSet.getString(3) %></td>
                                                   <td><%=resultSet.getString(5) %></td>
                                                   <td><%=resultSet.getString(6) %></td>

                                                   
												  <td><a href="updateShop.jsp?id=<%=resultSet.getString("id")%>">Update</a></td>
													<td><a href="deleteShop.jsp?id=<%=resultSet.getString("id") %>" onclick="return confirm_alert(this);">Delete</a></td>
													
                                                   </tr>
                                          </tbody>
                                                   <%
                                                   }
                                                   //connection.close();
                                                   } catch (Exception e) {
                                                   e.printStackTrace();
                                                   }
                                                   %>
								          
										</thead>
										
				 </table>                  
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

</html>