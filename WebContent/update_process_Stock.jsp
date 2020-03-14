<%@page import="java.util.*" %>
<%@page import="java.sql.*"%>
<%@page import="myConnection.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%
String id = request.getParameter("id");

String category = request.getParameter("categoryTxt");

String comp = request.getParameter("companyTxt");
String pname = request.getParameter("pnameTxt");
int price = Integer.parseInt(request.getParameter("priseTxt"));
int qty = Integer.parseInt(request.getParameter("quantityTxt"));

int total = price*qty;

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int ID = Integer.parseInt(id);
try
{
//System.out.println("hallo");
con = DBconnect.getConnect();
String sql="Update product set prise = ?, quantity=?, total = ? where id ='"+id+"'";
ps = con.prepareStatement(sql);

ps.setInt(1,price);
ps.setInt(2,qty);
ps.setInt(3,total);

int i = ps.executeUpdate();
if(i > 0)
{
    response.sendRedirect("ViewProduct.jsp");
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





