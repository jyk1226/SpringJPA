<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Spring MVC2 BoardDetail **</title>
</head>
<body>
<h2>** Spring MVC2 BoardDetail **</h2>
<table>
	<tr height="40"><td bgcolor="yellow">Seq</td>
		<td>${detail.seq}</td></tr>
	<tr height="40"><td bgcolor="yellow">Title</td>
		<td>${detail.title}</td></tr>
	<tr height="40"><td bgcolor="yellow">Id</td>
		<td>${detail.id}</td></tr>
	<tr height="40"><td bgcolor="yellow" >Content</td>
		<td><textarea rows="10" cols="40" readonly="readonly">${detail.content}</textarea></td>
	</tr>
	<tr height="40"><td bgcolor="yellow">Regdate</td>
		<td>${detail.regdate}</td></tr>
	<tr height="40"><td bgcolor="yellow">Count</td>
		<td>${detail.cnt}</td></tr>
</table>
<hr>

<c:if test="${logID==detail.id}">
	<a href="bdetail?seq=${detail.seq}&code=U">[글수정]</a>&nbsp;
	<!-- 답글 추가 후 원글인지 답글인지 알기위해  root값도 전달  -->
	<a href="bdelete?seq=${detail.seq}&root=${detail.root}">[글삭제]</a><br>
</c:if>
<a href="binsertf">[새글등록]</a>&nbsp;
<a href="rinsertf?root=${detail.root}&step=${detail.step}&indent=${detail.indent}">[답글등록]</a>&nbsp;
<a href="blist">[BoardList]</a>&nbsp;
<a href="home">[Home]</a><br>
</body>
</html>