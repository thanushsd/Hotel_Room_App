<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="components/navbar.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Booking - BlueEdge</title>
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

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
  <div class="container" >
  ${BookMessege}
  </div>

<br>
<div class="container w-75 border" >
<br>
<h1 style="background-color: #184771; padding: 10px; color: white; border-radius: 5px" >Booking Details</h1>
<table class="table">
  <thead>
    
  </thead>
<%
try{
String bid = request.getParameter("bid");
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from book where bid='"+bid+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
  <tbody>
  <tr>
      <td>Booking Number</td>
      <td>000<%= resultSet.getString("bid") %></td>
    </tr>
    <tr>
      <td>Check-In Date</td>
      <td><%= resultSet.getString("indate") %></td>
    </tr>
    <tr>
      <td>Check-Out Date</td>
      <td><%= resultSet.getString("outdate") %></td>
    </tr>
    <tr>
      <td>Room Type</td>
      <td><%= resultSet.getString("type") %></td>
    </tr>
    <tr>
      <td>Number Of Persons</td>
      <td><%= resultSet.getString("persons") %></td>
    </tr>
    <tr>
      <td>Hotel</td>
      <td><%= resultSet.getString("hotel") %></td>
    </tr>
    <tr>
      <td>Telephone</td>
      <td><%= resultSet.getString("tel") %></td>
    </tr>
  </tbody>
</table>
<a href="BookingController?action=DELETE&bid=<%= resultSet.getString("bid") %>" class="btn btn-warning">Cancel Booking</a>
<br>
<br>
</div>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<br>
<br>
<br>
<jsp:include page="components/footer.jsp"></jsp:include>
</body>
</html>




