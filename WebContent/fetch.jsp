<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="myConnection.*"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "super_market_sale";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
try{
	
Connection conn=DBconnect.getConnect();
String pname=request.getParameter("pnameTxt");
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select pname from product where pname='"+pname+"'";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
String p_name=resultSet.getString("pname");
i++;
out.println(p_name);
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
