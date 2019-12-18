<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/static-resources.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Staff Layout</title>
<script>
	$(document).ready(function() {
		$(function() {
			$("#tabs2").tabs();
			$("#tabs-21").load("staff.jsp");
			$("#tabs-22").load("viewstaffdetails.jsp");
		});
	});
</script>
</head>
<body>
	<div id="tabs2">
		<ul>
			<li><a href="#tabs-21">Registration</a></li>
			<li><a href="#tabs-22">View Details</a></li>
		</ul>
		<div id="tabs-21"></div>
		<div id="tabs-22"></div>
	</div>

</body>
</html>