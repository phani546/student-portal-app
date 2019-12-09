<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/static-resources.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<script type="text/javascript">
	$(document).ready(function() {
		$('#PersonTableContainer').jtable({
			title : 'Students',
			paging: true,
	        sorting: true,
	        defaultSorting: 'name ASC',
	        pageSizeChangeArea: true,
	        selecting: true, //Enable selecting
            selectingCheckboxes: true, //Show checkboxes on first column
            columnResizable: false,
            //openChildAsAccordion: true,
            toolbar: {
                items: [{
                    icon: 'css/metro/info.png',
                    text: 'View Record',
                    click: function () {
                    	var $selectedRows = $('#PersonTableContainer').jtable('selectedRows');
                        if ($selectedRows.length > 0) {
                            $selectedRows.each(function () {
                                var record = $(this).data('record');
                                bootbox.alert({
                                	 title: " id : " + record.id + "&nbsp;&nbsp;" +"name : " + record.name,
                                	 message: '<html> <head> <style> body { font-size: 15px; font-family: cursive; }; </style> </head> <body> <div class="image-div" align="center">' +
                                	 '<img src="${pageContext.request.contextPath}/img/download.jpg" alt="image" class="custom-img-class"/></div>'+
                                	 '<div class="main-content-custom" align="center">' +
                                	 '<table border=1>'+
                                	 '<tr>'+
                                	 '<td>username         </td><td>'+ record.userName + '</td>' + 
                                	 '</tr>'+
                                	 '<tr>'+
                                	 '<td>fathername       </td><td>'+ record.fathername + '</td>' + 
                                	 '</tr>'+
                                	 '<tr>'+
                                	 '<td>mothername       </td><td>'+ record.mothername+'</td>' + 
                                	 '</tr>'+
                                	 '<tr>'+
                                	 '<td>gender           </td><td>'+record.gender+'</td>' + 
                                	 '</tr>'+
                                	 '<tr>'+
                                	 '<td>Class            </td><td>'+record.studentClass+'</td>' +
                                	 '</tr>'+
                                	 '<tr>'+
                                	 '<td>section          </td><td>'+record.section+'</td>' + 
                                	 '</tr>'+
                                	 '<tr>'+
                                	 '<td>bloodgroup       </td><td>'+record.bloodgroup+'</td>' + 
                                	 '</tr>'+
                                	 '<tr>'+
                                	 '<td>Date of Joining  </td><td>'+record.doj+'</td>' + 
                                	 '</tr>'+
                                	 '<tr>'+
                                	 '<td>Emergency Contact</td><td>'+record.econtactno+'</td>' + 
                                	 '</tr>'+
                                	 '<tr>'+
                                	 '<td>Father MobileNo  </td><td>'+record.fathercontactno+'</td>' + 
                                	 '</tr>'+
                                	 '<tr>'+
                                	 '<td>Father EmailId   </td><td>'+record.fatheremailid+'</td>' + 
                                	 '</tr>'+
                                	 '<tr>'+
                                	 '<td>hobbies          </td><td>'+record.hobbies+'</td>' + 
                                	 '</tr>'+
                                	 '</table>'+
                                	 '</div>'+
                                	 '</body>'+
                                	 '</html>'
                                });
                            });
                        } else {
                        	var h = 'please select atleast one row to view';
                            swal({
                               text : h,
                               icon  : "warning",
                               button: "ok",
                            })
                        }
                    }
                }]
            },
	        actions : {
				listAction : 'ViewStudentDetails',
				updateAction : '/GettingStarted/UpdatePerson',
				deleteAction : '/GettingStarted/DeletePerson'
			},
			fields : {
				id : {
					title : 'id',
					key : true,
					list : false
				},
				address:{
					title: '',
                    width: '5%',
                    sorting: false,
                    edit: false,
                    create: false,
                    display: function (studentData) {
                    	var $img = $('<img src="css/metro/address-1.png" title="address"/>');
                    	 $img.click(function () {
                             $('#PersonTableContainer').jtable('openChildTable',
                                     $img.closest('tr'),
                                     {
		                            	 title: studentData.record.name + ' - address',
		                                 actions: {
		                                     listAction: 'GetAddressDetails?studentId=' + studentData.record.id,
		                                 },
		                                 fields: {
		                                	    userId : {
	                                                type: 'hidden',
	                                                defaultValue: studentData.record.id,
	                                                list : false
	                                            },
	                                            id: {
	                                                key: true,
	                                                create: false,
	                                                edit: false,
	                                                list: false
	                                            },
	                                            addresstype: {
	                                                title: 'address type',
	                                                width: '10%'
	                                            },
	                                            dno: {
	                                                title: 'Door no',
	                                                width: '10%'
	                                            },
	                                            street: {
	                                                title: 'street',
	                                                width: '10%'
	                                            },
	                                            landmark: {
	                                                title: 'landmark',
	                                                width: '10%',
	                                                list : false
	                                            },
	                                            village: {
	                                                title: 'village',
	                                                width: '10%'
	                                            },
	                                            city: {
	                                                title: 'city',
	                                                width: '10%'
	                                            },
	                                            mandal: {
	                                                title: 'mandal',
	                                                width: '10%'
	                                            },
	                                            district: {
	                                                title: 'district',
	                                                width: '10%'
	                                            },
	                                            state: {
	                                                title: 'state',
	                                                width: '10%'
	                                            },
	                                            pincode: {
	                                                title: 'pincode',
	                                                width: '10%'
	                                            },
	                                            country: {
	                                                title: 'country',
	                                                width: '5%',
	                                                list: false
	                                            }
	                                        }
                                     }, function (data) { //opened handler
	                                            data.childTable.jtable('load');
	                                 });
                               });
                    	       return $img;
                  	   }
                },
				name : {
					title : 'student name',
					width : '20%'
				},
			    userName : {
					title : 'username',
					list : false
				},
				password : {
					title : 'password',
					list : false
				},
				fathername : {
					title : 'Father name',
					width : '15%'
				},
				mothername :{
					title : 'Mother name',
					width:  '15%'
				},
				gender :{
					title : 'gender',
					width:  '5%'
				},
				studentClass :{
					title : 'class',
					width:  '5%'
				},
				section :{
					title : 'section',
					width:  '5%'
				},
				bloodgroup :{
					title : 'bloodgroup',
					width:  '5%',
					list : false
				},
				doj : {
					title : 'Date Of Joining',
					width : '8%',
					type : 'date',
					create : true,
					edit : true
				},
				econtactno :{
					title : 'Emergency Contact',
					width:  '10%'
				},
				fathercontactno :{
					title : 'Father Contact No',
					width:  '10%'
				},
				fatheremailid :{
					title : 'Father Mail',
					width:  '10%',
					list : false
				},
				hobbies :{
					title : 'Hobbies',
					width:  '10%',
					list: false
				},
				photopath :{
					title : 'photopath',
					width:  '10%',
					list : false
				}
	        }
	    });
		$('#PersonTableContainer').jtable('load');
	});
</script>
</head>
<body>
    <div id="PersonTableContainer" class="ptable-cont">
	</div>
</body>
</html>
