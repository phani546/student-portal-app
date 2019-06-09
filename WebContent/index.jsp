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
			$("#tabs-5").load("holidays.jsp");
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
			</ul>
			<div id="tabs-1">
				<p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a,
					risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris.
					Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem.
					Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo.
					Vivamus sed magna quis ligula eleifend adipiscing. Duis orci.
					Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam
					molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut
					dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique
					tempus lectus.</p>
			</div>
			<div id="tabs-2">
				<p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus
					gravida ante, ut pharetra massa metus id nunc. Duis scelerisque
					molestie turpis. Sed fringilla, massa eget luctus malesuada, metus
					eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet
					fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam.
					Praesent in eros vestibulum mi adipiscing adipiscing. Morbi
					facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut
					posuere viverra nulla. Aliquam erat volutpat. Pellentesque
					convallis. Maecenas feugiat, tellus pellentesque pretium posuere,
					felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris
					consectetur tortor et purus.</p>
			</div>
			<div id="tabs-3">
				
			</div>
			<div id="tabs-4">
				
			</div>
			<div id="tabs-5">
				<a href="holidays.jsp" target="_blank"></a>
			</div>

		</div>
		<div class="footer" style="margin-top: 430px;">
			<span>All rights reserved</span>
		</div>
	</div>
</body>
</html>
