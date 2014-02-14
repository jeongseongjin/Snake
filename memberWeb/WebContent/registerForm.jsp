<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="color.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입 양식</title>
<link href="style.css" rel="stylesheeter" type="text/css">
<script language="JavaScript" src="script.js"></script>
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
	<form name="regForm" method="post" action="registermember.servlet"
		onsubmit="return inputCheck()">
		<table width="550" border="0" cellspacing="0" cellpadding="2"
			align="center">
			<tr height="39" align="center" bgcolor="#FAFAD2">
				<td colspan="3"><b>회원가입</b></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>아이디</b><font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="id" size="21" maxlength="15"> <font color="blue" >3글자 이상 영문으로 작성</font></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>비밀번호</b><font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="password"
					name="passwd" size="21"><font color="blue" > 4자 이상 입력</font></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>비밀번호확인</b><font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="password"
					name="repasswd" size="21"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>이름</b><font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="name" size="21"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>주민등록번호</b><font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>">
				<input type="text" name="jumin1" size="6" maxlength="6">-
				<input type="text" name="jumin2" size="7" maxlength="7"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>성별</b></td>
				<td width="180" bgcolor="<%=value_c%>">
					&nbsp &nbsp <input type="radio" name="gender" value="M" checked="checked">남자
					&nbsp &nbsp <input type="radio" name="gender" value="W">여자
				</td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>이메일</b><font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="email" size="21"><font color="blue" > 표준입력대로 입력</font></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>전화번호</b></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="tel" size="21"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>핸드폰번호</b></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="mobile" size="21"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>집주소</b></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="address" size="21"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>홈페이지</b></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="homepage" size="21"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>직업</b></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="job" size="21"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>하고싶은말</b></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="comments" size="21"></td>
			</tr>
			<tr align="center">
				<td colspan="3" align="center" bgcolor="#FAFAD2"><input
					type="image" src="img\regi.png">
			</tr>
		</table>
	</form>
</body>
</html>