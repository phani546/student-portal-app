<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/fullcalendar.css">
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/js/fullcalendar.js"></script>
<title>HolidayCalendar</title>
<script>
  $(document).ready(function(){
	  $('#container').fullCalendar({
		  header: {
		    left: 'prev,next today',
		    center: 'title',
		    right: 'month,agendaWeek,agendaDay,listWeek'
		  },
		  defaultDate: '2019-01-12',
		  navLinks: true, // can click day/week names to navigate views
		  editable: true,
		  eventLimit: true, // allow "more" link when too many events
		  events: [
		    {
		      title: 'All Day Event',
		      start: '2019-01-01',
		    },
		    {
		      title: 'Long Event',
		      start: '2019-01-07',
		      end: '2019-01-10'
		    },
		    {
		      id: 999,
		      title: 'Repeating Event',
		      start: '2019-01-09T16:00:00'
		    },
		    {
		      id: 999,
		      title: 'Repeating Event',
		      start: '2019-01-16T16:00:00'
		    },
		    {
		      title: 'Conference',
		      start: '2019-01-11',
		      end: '2019-01-13'
		    },
		    {
		      title: 'Meeting',
		      start: '2019-01-12T10:30:00',
		      end: '2019-01-12T12:30:00'
		    },
		    {
		      title: 'Lunch',
		      start: '2019-01-12T12:00:00'
		    },
		    {
		      title: 'Meeting',
		      start: '2019-01-12T14:30:00'
		    },
		    {
		      title: 'Happy Hour',
		      start: '2019-01-12T17:30:00'
		    },
		    {
		      title: 'Dinner',
		      start: '2019-01-12T20:00:00'
		    },
		    {
		      title: 'Birthday Party',
		      start: '2019-01-13T07:00:00'
		    },
		    {
		      title: 'Click for Google',
		      url: 'http://google.com/',
		      start: '2019-01-28'
		    }
		  ]
		}); 
  });
</script>
</head>
<body>
  <div id="container"></div>
</body>
</html>