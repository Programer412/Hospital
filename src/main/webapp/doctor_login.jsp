<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>



<meta charset="ISO-8859-1">
<title>Admin Login Page</title>

<style type="text/css">
.paint-card
{
box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}

</style>
<%@include file="component/allcss.jsp" %>
</head>
<body>
<%@include file="component/navbar.jsp" %>

<div class="container p-5">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card-body paint-card">
<p class="fs-4 text-center"> Doctor Login</p>

	<c:if test="${not empty succMsg }">
						<p class="text-center text-success fs-3">${succMsg }</p>
						<c:remove var="succMsg" scope="session" />
					</c:if>
					<c:if test="${not empty errorMsg }">
						<p class="text-center text-danger fs-3">${errorMsg }</p>
						<c:remove var="errorMsg" scope="session" />
					</c:if>


<form action="doctorLogin" method="post">
<div class="mb-3">
<label class="form-label">Email address</label>
<input required name="email" class="form-control">

</div>
<div class="mb-3">
<label class="form-label">Password</label>
<input required name="password" class="form-control">

</div>

<button type="submit" class="btn bg-success text-white col-md-12">login</button>

</form>

<br>
Don't have an account? <a href="signup.jsp" class="clink">create one</a>

</div>
</div>
</div>

</div>


</body>
</html>