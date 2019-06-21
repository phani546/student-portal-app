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
            
                <tr>
                <td colspan=2>
                  <center><font size=4><b>Marks Entry</b></font></center>
                  </td>
                    </tr>
                 <tr>
                      <td>studentclass</td>
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
                                 
                         <TR><TH>subject<TH>marks<TH>
                                                

  
                 
                         <tr>
                       <table border="2">
                       <tr>
                       <td colspan=-2>              
                    <tr><td>English</td><td><input type="text" id="txtEnglish"></td></tr>
                    <tr><td>hindi</td><td><input type="text" id="txthindi"></td></tr>
                    <tr><td>Maths</td><td><input type="text" id="txtMaths"></td></tr>
                    <tr><td>social</td><td><input type="text" id="txtsocial"></td></tr>
                    <tr><td>Science</td><td><input type="text" id="txtScience"></td></tr>   
                    </table>
                   
                               
                </table><br></br>
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