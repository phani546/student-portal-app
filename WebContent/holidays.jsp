<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/static-resources.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HolidayCalendar</title>
<script>
	$(document).ready(function() {
		function getList() {
			$.ajax({
				url : "HolidayList",
				type : 'GET',
				success : function(data) {
					$('#container').fullCalendar({
						header : {
							left : 'prev,next today',
							center : 'title',
							right : 'month,agendaWeek,agendaDay,listWeek'
						},
						defaultDate : '2019-01-12',
						navLinks : true, // can click day/week names to navigate views
						editable : true,
						eventLimit : true, // allow "more" link when too many events
						events : JSON.parse(data).data
					});
				},
				error : function(data) {
					console.log(data)
				}
			});
		}
		$("#refreshme").click(function() {
			getList()
		});
		getList()
	});
</script>
</head>
<body>
	<div id="refreshcont">
		<button type="button" class="btn btn-primary" id="refreshme">
			<span class="glyphicon glyphicon-refresh"></span>
		</button>
	</div>
	<div id="container" style="margin-top: 10px;"></div>
</body>
</html>