<%@page import="java.util.*" %>
<%@page import="java.sql.*"%>
<%@page import="myConnection.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%


String id = request.getParameter("id");

String name = request.getParameter("nameTxt");

String email = request.getParameter("emailTxt");
String password = request.getParameter("passwordTxt");
String contact = request.getParameter("contactTxt");
String city = request.getParameter("cityTxt");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int ID = Integer.parseInt(id);
try
{
//System.out.println("hallo");
con = DBconnect.getConnect();
String sql="Update shop set name=?,email=?,pass=?,mob=?,city=? where id ='"+id+"'";
ps = con.prepareStatement(sql);

ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,password);
ps.setString(4,contact);
ps.setString(5,city);

int i = ps.executeUpdate();
if(i > 0)
{
    response.sendRedirect("ViewShopAdmin.jsp");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>





