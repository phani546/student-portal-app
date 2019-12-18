<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script>
 $(document).ready(function(){
	alert($('#abv').val()); 
 });
</script>
</head>

<body>
<div class="container">
	<form class="well form-horizontal" action="Staff" method="post"
		id="contact_form">
		<fieldset>
			<!-- Form Name -->
			<legend>
				<center>
					<h2>
						<b> staff Registration Form</b>
					</h2>
				</center>
			</legend>
			<br>

			<!-- Text input-->

			<div class="form-group">
				<label class="col-md-4 control-label">staffid</label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i class="fas fa-user"></i></span> <input name="staff_id"
							placeholder="staff id" class="form-control" type="text">
					</div>
				</div>
			</div>

			<!-- Text input -->
			<div class="form-group">
				<label class="col-md-4 control-label"> Name</label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input name="name"
							placeholder="First Name" class="form-control" type="text">
					</div>
				</div>
			</div>

			<!-- Text input-->

			<div class="form-group">
				<label class="col-md-4 control-label">father Name</label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input name="father_name"
							placeholder="fatherName" class="form-control" type="text">
					</div>
				</div>
			</div>


			<!-- Text input-->

			<div class="form-group">
				<label class="col-md-4 control-label">Mother Name</label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input name="mother_name"
							placeholder="Mother Name" class="form-control" type="text">
					</div>
				</div>
			</div>




			<div class="form-group">
				<label class="col-md-4 control-label">languages known</label>
				<div class="col-md-4 selectContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-list"></i></span> <select
							name="languages known" class="form-control selectpicker">
							<option value="">Select languages Known</option>
							<option>Telugu</option>
							<option>Hindi</option>
							<option>English</option>
							<option>Sanskrit</option>
						</select>
					</div>
				</div>
			</div>

			<!-- Text input-->

			<div class="form-group">
				<label class="col-md-4 control-label">Qualification</label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input name="qualification"
							placeholder="Qualification" class="form-control" type="text">
					</div>
				</div>
			</div>

			<!-- Text input-->

			<div class="form-group">
				<label class="col-md-4 control-label">Designation</label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input name="Designation"
							placeholder="designation" class="form-control" type="text">
					</div>
				</div>
			</div>
			
			
			<!-- Text input-->

			<div class="form-group">
				<label class="col-md-4 control-label">Class Alotted</label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input
							name="Class_Assigned" placeholder="Class" class="form-control"
							type="text">
					</div>
				</div>
			</div>
			
			<!-- Text input-->

			<div class="form-group">
				<label class="col-md-4 control-label">Subjects thought</label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input
							name="subjects_thought" placeholder="Class" class="form-control"
							type="text">
					</div>
				</div>
			</div>


			<!-- Text input-->

			<div class="form-group">
				<label class="col-md-4 control-label">Section Alotted</label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input
							name="Section_alotted" placeholder="Section" class="form-control"
							type="text">
					</div>
				</div>
			</div>
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label">E-Mail</label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-envelope"></i></span> <input name="email"
							placeholder="E-Mail Address" class="form-control" type="text">
					</div>
				</div>
			</div>


			<!-- Text input-->

			<div class="form-group">
				<label class="col-md-4 control-label">Contact No.</label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-earphone"></i></span> <input
							name="contact_no" placeholder="(639)" class="form-control"
							type="text">
					</div>
				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label"></label>
				<div class="col-md-4">
					<br>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<button type="submit" class="btn btn-warning">
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span
							class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					</button>
				</div>
			</div>

		</fieldset>
	</form>
</div>
</div>
<!-- /.container -->
</body>

</html>
