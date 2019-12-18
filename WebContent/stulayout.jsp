<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/static-resources.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Student Portal</title>
</head>
<script>
	$(document).ready(function() {
		$(function() {
			$("#tabs1").tabs();
			$("#tabs-11").load("student.jsp");
			$("#tabs-12").load("viewstudentdetails.jsp");
		});
	});
</script>
<body>
	<div class="content-body">
			<div id="tabs1">
				<ul>
					<li><a href="#tabs-11">Registration</a></li>
					<li><a href="#tabs-12">View Details</a></li>
				</ul>
				<div id="tabs-11"></div>
				<div id="tabs-12"></div>
			</div>
		</div>
</body>
</html>