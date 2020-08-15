<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<%@ include file="/static-resources.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">
$(document).ready(function() {
	  $('ul li a').click(function(e) {
		 e.preventDefault();
	     $('.container').load($(this).attr('href'));
	  });
});
</script>
<title>Home</title>
</head>
<body>
<nav class="navbar">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-user"></span>${user}</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="homeview.jsp">Home</a></li>
      <li><a href="stulayout.jsp">Student</a></li>
      <li><a href="stafflayout.jsp">Staff</a></li>
      <li><a href="showreport.jsp">Progress Report</a></li>
      <li><a href="holidaylayout.jsp">Holiday Calendar</a></li>
      <li><a href="attendence.jsp">Attendance</a></li>
      <li><a href="feedback.jsp">Feedback</a></li>
      <li><a href="contactus.jsp">ContactUs</a></li>
    </ul>
    <div class="singout">
    	<a href="${pageContext.request.contextPath}/logoutUser"><span
					class="glyphicon glyphicon-log-out"></span> Sign Out</a>
	</div>
  </div>
</nav>
<div class="container" style="width:auto;"></div>
</body>
</html>