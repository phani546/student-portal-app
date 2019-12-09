<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/static-resources.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/registration.css">
<script>
 $(document).ready(function(){
	 $("#dob").bootstrapMaterialDatePicker({
		 time: false
	 });
	 $("#file").val(null);
	 $('#preview').html('');
	 $("#btnSubmit").click(function(event){
		   if($('#studentid').val().length < 0){
			   swal({
               	"text": "please enter student id",
               	"icon": "error",
               	"button":"ok"
               })
               return false;
		   }
		   event.preventDefault();
		   var form = $('#fileUploadForm')[0];
           var data = new FormData(form);
           $("#btnSubmit").prop("disabled", true);
	       $.ajax({
	            type: "POST",
	            enctype: 'multipart/form-data',
	            url: "PhotoUpload?studentid=" + $('#studentid').val(),
	            data: data,
	            processData: false,
	            contentType: false,
	            cache: false,
	            timeout: 600000,
	            success: function (data) {
	            	$('#preview').html('');
	            	$('#preview').append("<img src='"+"studentimages/"+ data +"' width='100' height='100' style='display: inline-block;'>");
	                swal({
	                	"text": "successfully uploaded",
	                	"icon": "success",
	                	"button":"ok"
	                })
	                $("#file").val(null);
	                $("#btnSubmit").prop("disabled", false);
	            },
	            error: function (e) {
	                console.log(e.responseText);
	                console.log("ERROR : ", e);
	                swal({
	                	"text": data,
	                	"icon": "error",
	                	"button":"ok"
	                })
	                $("#btnSubmit").prop("disabled", false);
	            }
	        });
	  });
	  $.ajax({
		  url : "${pageContext.request.contextPath}/GetNewStudentId",
		  success: function (data) {
			  console.log('data',data)
			  $('#studentid').val(data);
		  },
	      error: function (e){
	    	  console.log(e.responseText);
	    	  console.log("ERROR : ", e);
	    	  swal({
              	"text": "unable to get autoid please refresh page",
              	"icon": "error",
              	"button":"ok"
              })
	      }
		  
	  })
 });
</script>
</head>
<body>
	<div class="col-md-6">
		<div class="card">
			<div class="card-body">
				<form class="form-horizontal"
					action="${pageContext.request.contextPath}/StudentRegistration"
					method="POST" name="StudentRegistration">
					<div class="form-group">
						<i class="far fa-id-card"></i><input type="text"
							class="form-control" name="studentid" id="studentid"
							placeholder="studentid" disabled>
					</div>
					<div class="form-group">
						<i class="fa fa-user"></i><input type="text" class="form-control"
							name="username" placeholder="username" required="true">
					</div>
					<div class="form-group">
						<i class="fa fa-lock"></i><input type="password"
							class="form-control" name="password" placeholder="password" required="true">
					</div>
					<div class="form-group">
						<i class="fas fa-rocket"></i><input type="text" class="form-control" name="fathername"
							placeholder="father's name" required="true">
					</div>
					<div class="form-group">
						<i class="fas fa-rocket"></i><input type="text" class="form-control" name="mothername"
							placeholder="mother's name" required="true">
					</div>
					<div class="form-group">
						<i class="fa fa-calendar"></i><input type="text"
							class="form-control" name="date of birth" id="dob"
							placeholder="date of birth" required="true">
					</div>
					<div class="form-group">
						<i class="far fa-envelope"></i><input type="text" class="form-control" name="fatheremailid" placeholder="father email">
					</div>
					<div class="form-group">
						<i class="fas fa-mobile"></i><input type="text" class="form-control" name="fathercontactno" placeholder="father contact no" required="true">
					</div>
					<div class="form-group">
						<select class="form-control" name="gender">
							<option value="" disabled selected>-- Gender --</option>
							<option>Male</option>
							<option>FeMale</option>
						</select>
					</div>
					<div class="form-group">
						<select class="form-control" name="studentclass">
							<option value="" disabled selected>-- Student Class --</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
						</select>
					</div>
					<div class="form-group">
						<select class="form-control" name="section">
							<option value="" disabled selected>-- Section --</option>
							<option>A</option>
							<option>B</option>
							<option>C</option>
							<option>D</option>
							<option>E</option>
							<option>F</option>
						</select>
					</div>
					<div class="form-group">
						<select class="form-control" name="bloodgroup">
							<option value="" disabled selected>-- blood group --</option>
							<option>A +ve</option>
							<option>B +ve</option>
							<option>AB +ve</option>
							<option>B -ve</option>
							<option>AB -ve</option>
							<option>0 +ve</option>
							<option>0 -ve</option>
						</select>
					</div>
					<div class="form-group">
						<i class="fas fa-snowboarding"></i><input type="text" class="form-control" name="hobbies" placeholder="hobbies">
					</div>
					<div class="form-group">
						<label for="address">permanant address</label>
						<div class="form-row">
							<div class="form-group col-sm-4">
								<i class="fas fa-door-closed"></i><input type="text" class="form-control" name="dno"
									placeholder="door no" required="true">
							</div>
							<div class="form-group col-sm-8">
								<i class="fas fa-street-view"></i><input type="text" class="form-control" name="street"
									placeholder="street" required="true">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-xs-4">
								<i class="fas fa-landmark"></i><input type="text" class="form-control" name="landmark"
									placeholder="landmark">
							</div>
							<div class="form-group col-xs-4">
								<i class="fas fa-city"></i><input type="text" class="form-control" name="City"
									placeholder="city" required="true">
							</div>
							<div class="form-group col-xs-4">
								<i class="fas fa-rocket"></i><input type="text" class="form-control" name="Pin_Code"
									placeholder="pincode" required="true">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-xs-4">
								<i class="fas fa-rocket"></i><input type="text" class="form-control" name="State"
									placeholder="State" required="true">
							</div>
							<div class="form-group col-xs-4">
								<i class="fas fa-rocket"></i><input type="text" class="form-control" name="Country"
									placeholder="Country" value="INDIA">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="photo">temporary address</label>
						<div class="form-row">
							<div class="form-group col-sm-4">
								<i class="fas fa-door-closed"></i><input type="text" class="form-control" name="tdno"
									placeholder="door no" required="true">
							</div>
							<div class="form-group col-sm-8">
								<i class="fas fa-street-view"></i><input type="text" class="form-control" name="tstreet"
									placeholder="street" required="true">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-xs-4">
								<i class="fas fa-landmark"></i><input type="text" class="form-control" name="tlandmark"
									placeholder="landmark">
							</div>
							<div class="form-group col-xs-4">
								<i class="fas fa-city"></i><input type="text" class="form-control" name="tCity"
									placeholder="city" required="true">
							</div>
							<div class="form-group col-xs-4">
								<i class="fas fa-rocket"></i><input type="text" class="form-control" name="tPin_Code"
									placeholder="pincode" required="true">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-xs-4">
								<i class="fas fa-rocket"></i><input type="text" class="form-control" name="tState"
									placeholder="State" required="true">
							</div>
							<div class="form-group col-xs-4">
								<i class="fas fa-rocket"></i><input type="text" class="form-control" name="tCountry"
									placeholder="Country" value="INDIA">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label><input type="checkbox">copy temporary
							address as permanent address</label>
					</div>
					<div class="form-group">
						<button type="button" class="btn btn-info" data-toggle="modal"
							data-target="#uploadModal">Upload Photo<i class="fas fa-upload"></i></button>
					</div>
					<div class="form-group">
						<input type="submit" value="submit" class="btn btn-primary">
						<input class="btn btn-warning" type="reset" value="reset">
					</div>
				 </form>
			</div>
	   </div>
	</div>
	<!-- Modal -->
	<div id="uploadModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">upload photo</h4>
				</div>
				<div class="modal-body">
					<!-- Form -->
					<form method='post' enctype="multipart/form-data"
						id="fileUploadForm">
						<input type='file' name='fileupload' id='file'
							class='form-control' required="true"><br> <input type='submit'
							class='btn btn-info' value='Upload' id='btnSubmit'>
					</form>
					<!-- Preview-->
					<div id='preview'></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">OK</button>
				</div>
			</div>
		</div>
	</div>
	<!-- ---- modal -->
</body>
</html>