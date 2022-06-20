<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="main.jsp" flush="true" />

<style type="text/css">
a{
font-family: 'Fjalla One', sans-serif;
}
</style>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light ">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="./images/blueedge.png" alt="" width="30" height="30" class="d-inline-block align-text-top">
      BlueEdge
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="./index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./bookroom.jsp">Reservation</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./about.jsp">About</a>
        </li>

<%
String email = (String)session.getAttribute("email");

if( email == null ){ %>
	 <li class="nav-item">
          <a class="nav-link" href="./login.jsp">Sign In</a>
        </li>

<%  }
%>

<%
if( email != null ){ %>
	 <li class="nav-item">
          <a class="nav-link" href="./account.jsp">My Account</a>
        </li>

<%  }
%>

<%
if( email != null ){ %>
	 <li class="nav-item">
          <a class="nav-link" href="./logout.jsp">LogOut</a>
        </li>

<%  }
%>

        
        
      </ul>
    </div>
  </div>
</nav>

</body>
</html>