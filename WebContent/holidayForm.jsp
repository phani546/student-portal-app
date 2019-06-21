<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="/static-resources.jsp" %>
<title>Enter Holidays or Events</title>
</head>
<script>
	$(document).ready(function() {
		$("#datepickerStart").datepicker({
			dateFormat : 'yy-mm-dd'
		});
		$("#datepickerEnd").datepicker({
			dateFormat : 'yy-mm-dd'
		});
		alert(document.getElementById("output"));
	});
</script>
<body>
	<form action="${pageContext.request.contextPath}/HolidayList"
		method="POST">
		<p>
			eventName : <input type=text name="event" id="eventName" />
		</p>
		<p>
			Start Date: <input type="text" name="startdatepick"
				id="datepickerStart">
		</p>
		<p>
			End Date: <input type="text" name="enddatepick" id="datepickerEnd">
		</p>
		<input type="submit" value="submit" />
	</form>
</body>
</html>