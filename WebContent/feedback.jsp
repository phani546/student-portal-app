<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
	<form method="post" action="//submit.form">
		<div style="width: 400px;"></div>
		<div style="padding-bottom: 18px; font-size: 24px;">Student
			Feedback</div>
		<div style="padding-bottom: 18px; font-size: 18px;">Please help
			us improve our classes by filling out this form.</div>
		<div style="display: flex; padding-bottom: 18px; width: 500px;">
			<div style="margin-left: 0; margin-right: 1%; width: 49%;">
				Teacher / Instructor first name<br /> <input type="text" id="data_3"
					name="data_3" style="width: 100%;" class="form-control" />
			</div>
			<div style="margin-left: 1%; margin-right: 0; width: 49%;">
				Teacher / Instructor last name<br /> <input type="text" id="data_4"
					name="data_4" style="width: 100%;" class="form-control" />
			</div>
		</div>
		<div style="display: flex; padding-bottom: 18px; width: 500px;">
			<div style="margin-left: 0; margin-right: 1%; width: 49%;">
				Subject<br /> <input type="text" id="data_5" name="data_5"
					style="width: 100%;" class="form-control" />
			</div>
			<div style="margin-left: 1%; margin-right: 0; width: 49%;">
				Class subject<br /> <input type="text" id="data_6" name="data_6"
					style="width: 100%;" class="form-control" />
			</div>
		</div>
		<div style="padding-bottom: 18px;">
			Why did you chose this course?<br /> <select id="data_7"
				name="data_7" style="width: 500px;" class="form-control"><option>Degree requirement</option>
				<option>Personal interest</option>
			</select>
		</div>
		<div style="padding-bottom: 18px;">
			Level of knowledge on start of class<br /> <select id="data_9"
				name="data_9" style="width: 500px;" class="form-control"><option>Very good</option>
				<option>Good</option>
				<option>Fair</option>
				<option>Poor</option>
				<option>Very poor</option>
			</select>
		</div>
		<div style="padding-bottom: 18px;">
			Level of effort invested in class<br /> <select id="data_10"
				name="data_10" style="width: 500px;" class="form-control"><option>Very good</option>
				<option>Good</option>
				<option>Fair</option>
				<option>Poor</option>
				<option>Very poor</option>
			</select>
		</div>
		<div style="padding-bottom: 18px;">
			Level of knowledge at the end of the class<br /> <select id="data_11"
				name="data_11" style="width: 500px;" class="form-control"><option>Very good</option>
				<option>Good</option>
				<option>Fair</option>
				<option>Poor</option>
				<option>Very poor</option>
			</select>
		</div>
		<div style="padding-bottom: 18px;">
			Level of communication<br /> <select id="data_12" name="data_12"
				style="width: 500px;" class="form-control"><option>Very good</option>
				<option>Good</option>
				<option>Fair</option>
				<option>Poor</option>
				<option>Very poor</option>
			</select>
		</div>
		<div style="padding-bottom: 18px;">
			Would you recommend this subject to other students?<br /> <select
				id="data_8" name="data_8" style="width: 500px;" class="form-control"><option>Yes</option>
				<option>No</option>
				<option>Not sure</option>
			</select>
		</div>
		<div style="padding-bottom: 18px;">
			<input name="skip_Submit" value="Submit" type="submit" />
		</div>
	</form>
</body>
</html>