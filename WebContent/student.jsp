<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	/<!DOCTYPE html>
<html>
<head>
	 <div class="container">

    <form class="well form-horizontal" action=" " method="post"  id="contact_form">
<fieldset>

<!-- Form Name -->
<legend><center><h2><b> Student Registration Form</b></h2></center></legend><br>

<!-- Text input-->

<div class="form-group">
 <label class="col-md-4 control-label">student id</label>
 <div class="col-md-4 inputGroupContainer">
 <div class="input-group">
 <span class="input-group-addon"><i class="glyphicon glyphicon-user"><</i></span>
 <input name="student_id" placeholder="student id" class="form-control" type="text">
 </div>
 </div>
 </div>
 
<!-- Text input -->
<div class="form-group">
  <label class="col-md-4 control-label"> Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="name" placeholder="First Name" class="form-control"  type="text">
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >father Name</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="father_name" placeholder="fatherName" class="form-control"  type="text">
    </div>
  </div>
</div>


<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Mother Name</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="mother_name" placeholder="Mother Name" class="form-control"  type="text">
    </div>
  </div>
</div>




  <div class="form-group"> 
  <label class="col-md-4 control-label">class</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
    <select name="class" class="form-control selectpicker">
      <option value="">class</option>
      <option>1st</option>
      <option>2nd</option>
      <option >3rd</option>
      <option >4th</option>
      <option>5th</option>
      <option>6th</option>
      <option>7th</option>
      <option>8th</option>
      <option>9th</option>
      <option>10th</option>
    </select>
  </div>
</div>
</div>
  
<!-- Text input-->

  <div class="form-group"> 
  <label class="col-md-4 control-label">section</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
    <select name="section" class="form-control selectpicker">
      <option value="">section</option>
      <option>s1</option>
      <option>s2</option>
      <option >s3</option>
      <option >s4</option>
    </select>
  </div>
</div>
</div>
  


<!-- Text input-->

  <div class="form-group"> 
  <label class="col-md-4 control-label">Blood group</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
    <select name="Blood group" class="form-control selectpicker">
      <option value="">blood group</option>
      <option>A</option>
      <option>o+</option>
      <option >o-</option>
      <option >b+</option>
    </select>
  </div>
</div>
</div>
  

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >econtactno</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="econtactno" placeholder="econtactno" class="form-control"  type="text">
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >father contact no</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="fathercontact no" placeholder="father contactno" class="form-control"  type="text">
    </div>
  </div>
</div>


<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >father email id</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="father email id" placeholder="father email id" class="form-control"  type="text">
    </div>
  </div>
</div>
<!-- Text input-->
       <div class="form-group">
  <label class="col-md-4 control-label">House location</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <input name="housw location" placeholder="house location" class="form-control"  type="text">
    </div>
  </div>
</div>


<!-- Text input-->
       
<div class="form-group">
  <label class="col-md-4 control-label">Hobbies.</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input name="hobbies" placeholder="Hobbies" class="form-control" type="text">
    </div>
  </div>
</div>
<!-- Text input-->
       <div class="form-group">
  <label class="col-md-4 control-label">photopath</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <input name="Photo path" placeholder="Photo path" class="form-control"  type="text">
    </div>
  </div>
</div>
<!-- Select Basic -->

<!-- Success message -->
<div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
  </div>
</div>

</fieldset>
</form>
</div>
    </div><!-- /.container -->
</body>

</html>
	