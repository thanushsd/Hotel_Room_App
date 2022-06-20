<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign In</title>

<style type="text/css">
body{
font-family: 'Fjalla One', sans-serif
}
</style>

</head>
<body>
<jsp:include page="components/navbar.jsp"></jsp:include>

<br>

<div class="container w-50 p-4" style=" border-radius: 10px; border-color: #184771; border: dotted; border-width: 1px; font-family: 'Fjalla One', sans-serif  " >
<h2>Log In</h2>
<p>${messege }</p>
<h6 style=" background-color: #184771; color: white; border-radius: 10px; padding: 5px  " >Log In And Unlock Premium Features</h6>
<form action="log" method="post" >
<div class="form-floating mb-3">
  <input name="email" style="box-shadow: none" type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
  <label for="floatingInput">Email</label>
</div>
<div class="form-floating">
  <input name="pw" style="box-shadow: none" type="password" class="form-control" id="floatingPassword" placeholder="Password">
  <label for="floatingPassword">Password</label>
</div>
<a href="register.jsp" >Don't have an account? Create Account</a><br>
<input type="submit" class="btn w-50" style="background-color: #184771; color: white; margin-top: 15px " >
</form>

</div>

<br><br>
<jsp:include page="components/footer.jsp"></jsp:include>

</body>
</html>




