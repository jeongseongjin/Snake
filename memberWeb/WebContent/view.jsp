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
<script>
function deleteal(no)
{
	if (confirm("삭제 하시겠습니까?"))
		  location.href ="delete.servlet?no="+no;
	

}

</script>
</head>
<body bgcolor="<%=bodyback_c%>">
<form action="memberlist.servlet" method="get">
		<table width="550" border="0" cellspacing="0" cellpadding="2"
			align="center">
			<tr>
				<td><center><input type="image" src="img\list.png"></center></td>
			</tr>
		</table>
	</form>
	<center>
		<h1><b>회원 목록</b></h1>
	</center>
	<table align="center" border='1' bgcolor="#FFFAF0">
		<tr>
			<td><b>번호</b></td>
			<td>${member.no }</td>
		</tr>
		<tr>
			<td><b>아이디</b></td>
			<td>${member.id }</td>
		</tr>
		<tr>
			<td><b>패스워드</b></td>
			<td>${member.password }</td>
		</tr>
		<tr>
			<td><b>이름</b></td>
			<td>${member.memberName }</td>
		</tr>
		<tr>
			<td><b>주민등록번호</b></td>
			<td>${member.memberSsn }</td>
		</tr>
		<tr>
			<td><b>이메일</b></td>
			<td>${member.email }</td>
		</tr>
		<tr>
			<td><b>전화번호</b></td>
			<td>${member.telNo }</td>
		</tr>
		<tr>
			<td><b>핸드폰번호</b></td>
			<td>${member.mobileNo }</td>
		</tr>
		<tr>
			<td><b>주소</b></td>
			<td>${member.address }</td>
		</tr>
		<tr>
			<td><b>성별</b></td>
			<td>${member.gender }</td>
		</tr>
		<tr>
			<td><b>홈페이지</b></td>
			<td>${member.homepage }</td>
		</tr>
		<tr>
			<td><b>하고싶은말</b></td>
			<td>${member.comments }</td>
		</tr>
	</table>

	<form action="modify.servlet?no=${member.no }" method="post">
	<center>
		<table>
			<tr>
				<td><input type="image" src="img\modi.png"></td>
				<td><img src="img\del.png"  style="cursor:pointer" onclick="deleteal('${member.no}')"
					></td>
			</tr>
		</table>
		</center>
	</form>
</body>
</html>