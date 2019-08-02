<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<%@ include file="/static-resources.jsp"%>
</head>
<body>
	<div class="banner"></div>
	<div class="container">
		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Sign In</div>
					<!--                         <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div> -->
				</div>

				<div style="padding-top: 30px" class="panel-body">
					<c:if test="${not empty loginerror}">
						<div id="login-alert" class="alert alert-danger col-sm-12">
							${loginerror}</div>
					</c:if>
					<c:if test="${not empty registersuccess}">
						<div id="login-alert" class="alert alert-success col-sm-12">
							${registersuccess}</div>
					</c:if>

					<form id="loginform" class="form-horizontal" role="form"
						action="login" method="post">

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input id="userName"
								type="text" class="form-control" name="userName" value=""
								placeholder="Email" required="">
						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input id="userPassword"
								type="password" class="form-control" name="userPassword"
								placeholder="Password" required="">
						</div>


						<div style="margin-top: 10px" class="form-group">
							<!-- Button -->

							<div class="col-sm-12 controls">
								<button id="btn-login" type="submit" class="btn btn-success">Login
								</button>
							</div>
						</div>
						<%-- <div class="form-group">
							<div class="col-md-12 control">
								<div
									style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">
									Don't have an account! <a
										href="${pageContext.request.contextPath}/register.jsp">
										Sign Up Here </a>
								</div>
							</div>
						</div> --%>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>