<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/static-resources.jsp"%>
<title>Registration Form</title>
<script type="text/javascript">
        function validate_form() {
            if (document.teach.teach_name.value == "") {
                alert("Please fill in the 'Your teacher name' box.");
                return false;
            }
            if (document.teach.num.value == "") {
                alert("Enter teacher Number");
                return false;
            }
            alert("sucessfully Submitted");
 
 
 
            if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/).test(document.emp.email_id.value)) {
                alert("You have entered an invalid email address!")
                return (false)
            }
        }
 
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (charCode != 46 && charCode > 31 &&
                (charCode < 48 || charCode > 57)) {
                alert("Enter Number");
                return false;
            }
            return true;
        }
 
 
        //-->
    </script>

</head>

<body>

	<form name="emp" action="" onsubmit="return validate_form();"
		method="post">
		<table align="center" width=40% width="100%" cellspacing="2"
			cellpadding="2" border="5">
			<tr>
				<td colspan="2" align="center"><b>staff Registration Form.</b></td>

			</tr>
			<tr>
				<td align="left" valign="top" width="41%">teacher Name<span
					style="color: red">*</span></td>

				<td width="57%"><input type="text" value="" name="teacher_name"
					size="24"></td>
			</tr>
			<tr>
				<td align="left" valign="top" width="41%">teacher registration
					number<span style="color: red">*</span>
				</td>
				<td width="57%"><input type="text" value="" name="num"
					onkeypress="return isNumberKey(event)" size="24"></td>
			</tr>
			<tr>
				<td align="left" valign="top" width="41%">Address</td>

				<td width="57%"><textarea rows="4" maxlen="200" name="S2"
						cols="20"></textarea></td>
			</tr>

			<tr>

				<td align="left" valign="top" width="41%">Contact Number</td>
				<td width="57%"><input type="text" value=""
					onkeypress="return isNumberKey(event)" name="txtFName1" size="24"></td>
			</tr>
			<tr>
				<td align="left" valign="top" width="41%">class Location</td>
				<td width="57%"><select name="mydropdown">
						<option value="Default">Default</option>
						<option value="1st">1st</option>
						<option value="2nd">2nd</option>
						<option value="3rd">3rd</option>
						<option value="4th">4th</option>
						<option value="5t">5th</option>
						<option value="6th">6th</option>
						<option value="7th">7th</option>
						<option value="8th">8th</option>
						<option value="9th">9th</option>
						<option value="10th">10th</option>

				</select></td>


			</tr>

			<tr>
				<td align="left" valign="top" width="41%">qualifications</td>
				<td width="57%"><select name="mydropdown">
						<option value="Default">Default</option>
						<option value="degree">BE.D</option>
						<option value="I.E">I.E</option>
						<option value="B.EI.E.D">B.EI.E.D</option>
				</select></td>


			</tr>
			<tr>
				<td align="left" valign="top" width="41%">Email<span
					style="color: red">*</span></td>
				<td width="57%"><input type="text" value="" name="email_id"
					size="24"></td>
			</tr>

			<tr>
				<td align=- "left" valign="top' width="41%">designation</td>

				<td width="57%"><input type="text" value="" name="designation"
					size="24"></td>
			</tr>
			<tr>
				<td align="left" valign="top" width="41%">applying for subject</td>

				<td width="57%"><input type="text" value=""
					name="applying for subject" size="24"></td>
			</tr>

			<tr>
				<td align="left" valign="top" width="41%">language known</td>
				<td width="57%"><input type="text" value=""
					name="applying for subject" size="24"></td>
			</tr>

			<tr>
				<td colspan="2">
					<p align="center">
						<input type="submit" value="  Submit" name="B4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" value="  Reset All   " name="B5">
				</td>
			</tr>

		</table>
	</form>
</body>

</html>
