<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** BoardList **</title>
</head>
<body>
<h2>** Spring MyBatis BoardList(조회수 답글) **</h2>
<img  src="resources/image/bar.gif">
<br><c:if test="${message != null}">
 => ${message}<br>
</c:if>


<table width=800 border="0">
<tr align="center" height=30 bgcolor="springgreen">
			<form action="bcheck" method="get">
				<b>level :</b> 
				<input type="checkbox" name="check" value="banana">바나나&nbsp;
				<input type="checkbox" name="check" value="apple">사과&nbsp; 
				<input type="checkbox" name="check" value="coffee">커피&nbsp; 
				<input type="checkbox" name="check" value="seungbin">승빈&nbsp; 
				<input type="submit" value="검색"> <input type="reset" value="취소">
			</form>
	<td>Seq</td><td>Title</td><td>ID</td>
	<td>RegDate</td><td>Count</td>
</tr>
<c:forEach var="mm" items="${Banana}">
	<tr align="center" height=30>
	<td>${mm.seq}</td>
	<td align="left">
		<!-- indent 값에 따른 들여쓰기 -->
		<c:if test="${mm.indent > 0 }">
			<c:forEach begin="1" end="${mm.indent }">
			<span>&nbsp;&nbsp;</span>
			</c:forEach>
			<span style="color:orange">re..</span>
		</c:if>
		<!-- title 출력 -->
		<c:if test="${logID!=null}">
			<a href="bdetail?seq=${mm.seq}&id=${mm.id}&content=${mm.content}&title=${mm.title}">${mm.title}</a>
		</c:if>
		<c:if test="${logID==null}">
			${mm.title}
		</c:if>
	</td>
	<td>${mm.id}</td>
	<td>${mm.regdate}</td><td>${mm.cnt}</td>
	</tr>
</c:forEach>
</table>
<hr>

<c:if test="${logID!=null}">
	<a href="binsertf">[새글등록]</a>&nbsp;
</c:if>
<c:if test="${logID==null}">
	<a href="loginf">[LogIn]</a>&nbsp;&nbsp;
	<a href="joinf">[Join]</a><br>
</c:if>
<a href="home">[Home]</a><br>
</body>
</html>