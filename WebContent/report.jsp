<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Student Results</title>
</head>
<body>
<fieldset style="width:600px">
                <legend><b>Student Input Section:</b></legend>
                Name:<input type="text" id="txtName">   
                Class:<input type="text" id="txtClass"> <br/><br/>
                <table border="1">
                    <tr><td>English</td><td><input type="text" id="txtEnglish"></td></tr>
                    <tr><td>hindi</td><td><input type="text" id="txthindi"></td></tr>
                    <tr><td>Maths</td><td><input type="text" id="txtMaths"></td></tr>
                    <tr><td>social</td><td><input type="text" id="txtsocial"></td></tr>
                    <tr><td>Science</td><td><input type="text" id="txtScience"></td></tr>             
                </table><br/><br/>
                <input type="button" value="Get Result">
            </fieldset>
            
            <h2>Report Card</h2>
            
            <table border="1">
                <tr><td>Name</td><td><input type="text" id="txtStudentName" readonly></td></tr>
                <tr><td>Class</td><td><input type="text" id="txtStudentClass" readonly></td></tr>
                <tr><td>Total Marks</td><td><input type="text" id="txtTotalMarks" readonly></td></tr>
                <tr><td>Average Marks</td><td><input type="text" id="txtAvgMarks" readonly></td></tr>
                <tr><td>Grade</td><td><input type="text" id="txtGrade" readonly></td></tr>
                <tr><td>Remarks</td><td><input type="text" id="txtResult" readonly></td></tr>
            </table>

</body>
</html>