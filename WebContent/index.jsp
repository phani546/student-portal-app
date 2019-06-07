<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Student Portal</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
  <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>   		
  <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/datatable.bootstrap.js"></script>
</head>
<body>
<div class="content-body">
You are logged in as <br/>
          		   <span class="glyphicon glyphicon-user"></span>${user}
		           <a style="float: right;" href="${pageContext.request.contextPath}/logoutUser"><span class="glyphicon glyphicon-log-out"></span> Sign Out</a>
        	</li>
</div>
</body>
</html>
