<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/static-resources.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">
$(document).ready(function() {
  $(function() {	
	$("#tabs4").tabs();
	$("#tabs-41").load("holidayForm.jsp");
	$("#tabs-42").load("holidays.jsp");
	
  });
});

</script>
<title>Staff</title>
</head>
<body>
	<div id="tabs4">
		<ul>
			<li><a href="#tabs-41">Record Holiday</a></li>
			<li><a href="#tabs-42">View Holidays</a></li>
		</ul>
		<div id="tabs-41"></div>
		<div id="tabs-42"></div>
	</div>
</body>
</html>