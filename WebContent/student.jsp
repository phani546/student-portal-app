<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript" src="validate.js"></script>
</head>
<body>
  <form action="StudentRegistration" name="StudentRegistration" onsubmit="return(validate());" method="POST">

<table cellpadding="2" width="20%" bgcolor="99FFFF" align="center"
cellspacing="2">

<tr>
<td colspan=2>
<center><font size=4><b>Student Registration Form</b></font></center>
</td>
</tr>

<tr>
<td>id</td>
<td><input type="text" name="id" size="30"></td>
</tr>

<tr>
<td>Name</td>
<td><input type=text name=textnames id="textname" size="30"></td>
</tr>

<tr>
<td>Father Name</td>
<td><input type="text" name="fathername" id="fathername"
size="30"></td>
</tr>


<tr>
<td>gender</td>
<td><input type="radio" name="gender" value="male" size="10">Male
<input type="radio" name="gender" value="Female" size="10">Female</td>
</tr>


<tr>
<td>class</td>
<td><select name="studentclass">
<option value="-1" selected>select..</option>
<option value="1st">1st</option>
<option value="2nd">2nd</option>
<option value="3rd">3rd</option>
<option value="4th">4th</option>
<option value="5th">5th</option>
<option value="6th">6th</option>
<option value="7th">7th</option>
<option value="8th">8th</option>
<option value="9th">9th</option>
<option value="10th">10th</option>
</select></td>
</tr>

<tr>
<td>section</td>
<td><select name="section">
<option value="-1" selected>select..</option>
<option value="A">A</option>
<option value="B">B</option>
<option value="c">C</option>
<option value="D">D</option>
</select></td>
</tr>
<tr>
<td>Blood group</td>
<td><select group="blood group">
<option value="-1" selected>select..</option>
<option value="o +ve">o+ve</option>
<option value="o -ve">o-ve</option>
<option value="A">A</option>
<option value="b">b</option>
</select></td>
</tr>
<tr>
<td>FatherEmailId</td>
<td><input type="text" name="fatheremailid" id="emailid" size="30"></td>
</tr>

<tr>
<td>DOJ</td>
<td><input type="text" name="doj" id="doj" size="30"></td>
</tr>

<tr>
<td>Econtactno</td>
<td><input type="text" name="Econtactno" id="Econtactmo" size="30"></td>
</tr>
<tr>
<td><input type="reset"></td>
<td colspan="2"><input type="submit" value="Submit" /></td>
</tr>
</table>
</form>
</body>
</html>
