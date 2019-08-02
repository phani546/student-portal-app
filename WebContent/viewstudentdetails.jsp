<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View student</title>
<%@ include file="/static-resources.jsp"%>
<script>
	$(document).ready(function() {
	    $('#example').DataTable();
	});
</script>
</head>
<body>
	<table id="example" class="display" style="width: 100%">
        <thead>
            <tr>
                <th>regno</th>
                <th>studentname</th>
                <th>class</th>
                <th>section</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
        <tfoot>
        </tfoot>
	</table>
</body>
</html>