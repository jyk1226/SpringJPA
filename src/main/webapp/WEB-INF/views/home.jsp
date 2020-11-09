<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="resources/jqLib/myStyle.css">
	<script src="resources/jqLib/jquery-3.2.1.min.js"></script>	
	<script src="resources/jqLib/axTest01.js"></script>	
	<script>
	function setClock() {
		var now = new Date();
		var t = '* NOW :'+
				now.getFullYear()+' 년'+(now.getMonth()+1)+' 월'+now.getDay()+' 일'+now.getHours()+' 시'	+now.getMinutes()+' 분'+now.getSeconds()+' 초'	;
		document.getElementById('clock').innerHTML=t;
		/* setTimeout('setClock()',1000); */
		setInterval('setClock()',1000);
	}
	</script>
</head>
<body onload="setClock()">
<h1>
	Hello world MVC2!  
</h1>

<P>  * Start  : ${serverTime} </P>
<span id="clock"></span><br>
<hr><br>
<c:if test="${message != null}">
	=> ${message}<br>
</c:if>

<img src="resources/image/penguin.jpg" width="300" height="200">
<hr>
<a href="blist">BList</a>&nbsp;
<a href="bcheck">Bcheck</a>&nbsp;
</body>
</html>

