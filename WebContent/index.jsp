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
			$("#tabs").tabs();
			$("#tabs-1").load("home.jsp");
	
			$("#tabs6").tabs();
			$("#tabs5").tabs();
			$("#tabs-52").load("holidays.jsp");
			$("#tabs-7").load("feedback.jsp");
			
			$("#tabs3").tabs();
			$("#tabs-31").load("staff.jsp");
			
			$("#tabs2").tabs();
			$("#tabs-21").load("student.jsp");
			$("#tabs-22").load("ViewStudentDetails");	
			
			$("#tabs-4").load("report.jsp");
			$("#tabs-51").load("holidayForm.jsp")
		});
	});
</script>
<body>
	<div class="content-body">
		<div class="headertitle">
			<div class="banner">
				<span class="glyphicon glyphicon-user"></span>${user}
				<a style="float: right;" href="${pageContext.request.contextPath}/logoutUser"><span
					class="glyphicon glyphicon-log-out"></span> Sign Out</a>
			</div>
		</div>
		<div id="tabs">
			<ul>
				<li><a href="#tabs-1">Home</a></li>
				<li><a href="#tabs-2">Student</a></li>
				<li><a href="#tabs-3">Staff</a></li>
				<li><a href="#tabs-4">ProgressReport</a></li>
				<li><a href="#tabs-5">HolidayCalendar</a></li>
				<li><a href="#tabs-6">attendance</a></li>
				<li><a href="#tabs-7">Feedback</a></li>
			</ul>
			<div id="tabs-1"></div>
			<div id="tabs-2">
			  <div id="tabs2">
			    <ul>
			      <li><a href="#tabs-21">Registration</a></li>
				  <li><a href="#tabs-22">View Details</a></li>
			    </ul>
			    <div id="tabs-21"></div>
			    <div id="tabs-22"></div>
			  </div> 
			</div>
			<div id="tabs-3">
			    <div id="tabs3">
			       <ul>
			         <li><a href="#tabs-31">Registration</a></li>
					 <li><a href="#tabs-32">View Details</a></li>
			       </ul>
			       <div id="tabs-31"></div>
			       <div id="tabs-32"></div>
			    </div>
			</div>
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
			<div id="tabs-6"></div>
			<div id="tabs-7"></div>
		</div>
		<div class="footer" style="margin-top: 430px;">
			<span>All rights reserved</span>
		</div>
	</div>
</body>
</html>