<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="components/navbar.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account - BlueEdge</title>
</head>
<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String email = (String)session.getAttribute("email");

if( email == null ){
	response.sendRedirect("login.jsp");	
}
%>

<%
String id = (String)session.getAttribute("email");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "hotel";
String userid = "root";
String password = "12345678";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from user where email='"+email+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<br>
<div class="container">
<h2 style="background-color: #184771; padding: 10px; color: white; border-radius: 5px" >Hello Mr. <%=resultSet.getString("fname") %></h2>
<br>
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
 
 <div class="container" >
 <a class="btn btn-success" href="bookroom.jsp" >Create New Booking</a>
 </div>
 
  <div class="container" >
  ${BookMessege}
  </div>

<h5 class="container" style="padding: 10px; color: black; text-decoration: underline;" >Your Bookings</h5>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from book where email='"+email+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<div class="container" >
<div class="card">
  <h5 class="card-header">Reservation On : <%= resultSet.getString("indate") %></h5>
  <div class="card-body">
  <p> Booking ID : 00<%= resultSet.getString("bid") %> </p>
    <span class="card-title" style="background-color: #ffe9ad; padding: 5px; color: black; border-radius: 1px" >Hotel : <%= resultSet.getString("hotel") %></span>
    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
    <a style="background-color: #184771; color : white; padding: 5px;" href="view.jsp?bid=<%= resultSet.getString("bid") %>" class="btn ">View Booking</a>
  </div>
</div>
</div>
<br>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>