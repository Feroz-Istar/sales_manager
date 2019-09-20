<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
String url = request.getRequestURL().toString();
String baseURL = url.substring(0, url.length() - request.getRequestURI().length()) + request.getContextPath() + "/";
SimpleDateFormat sdf = new SimpleDateFormat("MM-dd-yyyy");
SimpleDateFormat incoming = new SimpleDateFormat("dd-MM-yyyy");

String incomingDate= request.getParameter("var") != null ?sdf.format(incoming.parse(request.getParameter("var"))): sdf.format(new Date());

%>
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css" >
<link rel="stylesheet" href="<%=baseURL%>assets/css/jalendar.min.css" >
<style>
#yourId2{
	height:350px;
	width:350px;
}

    .jalendar .jalendar-container .jalendar-pages .add-event .close-button {
        border-radius: 0 0 20px 20px;
    }
</style>
</head>
<body style="background:#eeeeee;">
<div id="yourId2" class="jalendar ml-5">
                                     <div class="added-event" data-type="holiday"  data-link="http://pikselmatik.com" data-date="11-09-2019" data-title="WWDC 13 on San Francisco, LA"></div>
                                    <div class="added-event" data-type="holiday"  data-link="http://pikselmatik.com" data-date="11-09-2019" data-title="Hazal ve Bora Nikah Töreni"></div>
                                    <div class="added-event" data-type="holiday"  data-link="http://pikselmatik.com" data-date="01-10-2019" data-title="Hazal ve Bora Nikah Töreni"></div>
                                    <div class="added-event" data-type="event"  data-link="http://pikselmatik.com" data-date="10-09-2019" data-title="Tarkan İstanbul Concert on Harbiye Açık Hava Tiyatrosu"></div>
</div>




<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
<script src="<%=baseURL%>assets/js/popper.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
<script src="<%=baseURL%>assets/js/jalendar.min.js"></script>
<script src="<%=baseURL%>assets/js/highlight.pack.js"></script>

<script>
$( document ).ready(function() {
    console.log( "ready!" );
    $('#yourId2').jalendar({
        customDay: '<%=incomingDate%>',
        color: '#f9f9f9',
        type: 'linker',
        dateType: "dd-mm-yyyy",
        customUrl: 'http://localhost:8081/salesken_v2/navbar/navbar.jsp?var='+$('#yourId2').val(),
        titleColor: '#666',
        weekColor: '#999999',
        todayColor: '#FFFFFF',
        dayColor:'#444444',
        selectingAfterToday:false,
        selectingBeforeToday:false,
        done: function() {
            alert( $('#yourId2 input.data1').val() );
        }
    });
    
    
    
    
    
    
    /* .jalendar({
        color: '#f9f9f9',
        dateType: 'mm-dd-yyyy',
        titleColor: '#666',
        weekColor: '#999999',
        todayColor: '#FFFFFF',
        selectingBeforeToday:true,
        done: function(){
        	alert('selected date is' +$('#yourId2').val());
        	
        }
    }); */
    
    
});

</script>
</body>
</html>