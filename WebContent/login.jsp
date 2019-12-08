<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/static-resources.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/loginform.css">
<title>Login Page</title>
</head>
<body>
	<div class="form-bg">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-4 col-md-4 col-sm-offset-3 col-sm-6">
					<form class="form-horizontal" action="login" method="post">
						<div class="heading">Login</div>
						<span class="sub-heading">Student Portal</span>
						<div class="form-group">
							<i class="fa fa-user"></i><input class="form-control"
								type="text" placeholder="Username" name="userName" required>
						</div>
						<div class="form-group">
							<i class="fa fa-lock"></i><input class="form-control"
								type="password" placeholder="Password" name="userPassword" required>
						</div>
						<button type="submit" class="btn btn-default">Sign Up</button>
						<a href="" class="forgot-pass">Forgot Password ?</a>
						<div class="form-footer">
							<span>Do not have an account?</span> <a class="register" href="">Register
								Now</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
  </body>
</html>