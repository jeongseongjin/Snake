<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="color.jsp"%>
<html>
<head>
<title>로그인폼</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="<%=bodyback_c%>">
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<table align="center" border="1" bgcolor="#FFFAF0">
		<tr>
		<td>
			<form action="login.servlet" method="post">
				<table align="center" bgc>
					<tr>
						<td>아이디 :</td>
						<td><input type="text" name="id"></td>
					</tr>
					<tr>
						<td>암 &nbsp 호 :</td>
						<td><input type="password" name="password"></td>
					</tr>
					<table align="center" bgcolor="#FFFAF0">
						<tr>
							<td><input type="image" src="img\login.png"></td>
						</tr>
					</table>
				</table>

			</form>
			</td>
			</tr>
	</table>

</body>
</html>