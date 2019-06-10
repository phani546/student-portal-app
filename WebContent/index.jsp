<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Student Portal</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<script>
	$(document).ready(function() {
		$(function() {
			$("#tabs").tabs();
			$("#tabs-1").load("home.jsp");
			$("#tabs-2").load("registration.jsp");
			$("#tabs6").tabs();
			$("#tabs5").tabs();
			$("#tabs-52").load("holidays.jsp");
		});
	});
</script>
<body>
	<div class="content-body">
		<div class="header">
			<h1>welcome</h1>
		</div>
		<div>
			<span class="glyphicon glyphicon-user"></span>${user} <a
				style="float: right;"
				href="${pageContext.request.contextPath}/logoutUser"><span
				class="glyphicon glyphicon-log-out"></span> Sign Out</a>
		</div>
		<div style="margin-top: 20px;" id="tabs">
			<ul>
				<li><a href="#tabs-1">Home</a></li>
				<li><a href="#tabs-2">Student</a></li>
				<li><a href="#tabs-3">Staff</a></li>
				<li><a href="#tabs-4">Progress Report</a></li>
				<li><a href="#tabs-5">Holiday Calendar</a></li>
				<li><a href="#tabs-6">Attendance</a></li>
				<li><a href="#tabs-7">attendence</a></li>
				<li><a href="#tabs-8">studentfeedback</a></li>

			</ul>
			<div id="tabs-1"></div>
			<div id="tabs-2"></div>
			<div id="tabs-3"></div>
			<div id="tabs-4"></div>
			<div id="tabs-5">
				<div id="tabs5">
					<ul>
						<li><a href="#tabs-51">Record Holiday</a></li>
						<li><a href="#tabs-52">View Holidays</a></li>
					</ul>
					<div id="tabs-51"></div>
					<div id="tabs-52"></div>
				</div>
			</div>
			<div id="tabs-6">
				<div id="tabs6">
					<ul>
						<li><a href="#tabs-61">Student</a></li>
						<li><a href="#tabs-62">Staff</a></li>
					</ul>
					<div id="tabs-61"></div>
					<div id="tabs-62"></div>
				</div>
			</div>
		</div>
		<div class="footer" style="margin-top: 430px;">
			<span>All rights reserved</span>
		</div>
	</div>
</body>
</html>
