<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="color.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="<%=bodyback_c%>">
	<center>
	<tr>
		<th><h1>회원 목록</h1></th>
		</tr>
	</center>
	<table align="center" >
		<tr>
			<td><c:if test="${session=='true' }">
					<form action="logout.servlet">
						<input type="image" src="img\logout.png">
					</form>
				</c:if>
				<c:if test="${session=='false' }">
					<form action="login.jsp">
						<input type="image" src="img\login.png">
					</form>
				</c:if></td>
		</tr>
	</table>
	<table align="center" border='1' bgcolor="#FFFAF0">
		<tr>
			<th><b>번호</b></th>
			<th><b>이름</b></th>
			<th><b>아이디</b></th>
			<th><b>이메일</b></th>
			<th><b>전화번호</b></th>
		</tr>
		<c:forEach var="member" items="${memberlist}">
			<tr>
				<td><a href="search.servlet?no=${member.no}">${member.no}</a></td>
				<td>${member.memberName }</td>
				<td>${member.id }</td>
				<td>${member.email }</td>
				<td>${member.telNo }</td>
			</tr>
		</c:forEach>
	</table>

	<center>
		<form action="checklogin.servlet" method="get">
			<input type="image" src="img\regi.png">
		</form>
	</center>

</body>
</html>