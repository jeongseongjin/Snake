<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="color.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������ ����</title>
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

	<form name="regForm" method="post" action="realmodify.servlet"
		onsubmit="return inputCheck()">
		<table width="550" border="0" cellspacing="0" cellpadding="2"
			align="center">
			<tr height="39" align="center" bgcolor="#FAFAD2">
				<td colspan="3"><b>ȸ������ ����</b></td>
			</tr>
			<tr>
				<input type="hidden" name="no" size="20" value="${member.no }">
				</td>
			</tr>
			<tr>
				<td width="100" bgcolor="<%=title_c%>">��ȣ<font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>">${member.no}</td>
			</tr>
			<tr>
				<td width="100" bgcolor="<%=title_c%>">���̵�<font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>">${member.id}</td>
			</tr>
			<tr>
				<td width="100" bgcolor="<%=title_c%>">��й�ȣ<font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="password"
					name="passwd" size="20" value="${member.password }"></td>
			</tr>
			<tr>
				<td width="100" bgcolor="<%=title_c%>">��й�ȣȮ��<font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="password"
					name="repasswd" size="20" value="${member.password }"></td>
			</tr>
			<tr>
				<td width="100" bgcolor="<%=title_c%>">�̸�<font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>">${member.memberName}</td>
			</tr>
			<tr>
				<td width="100" bgcolor="<%=title_c%>">�ֹε�Ϲ�ȣ<font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>">${member.memberSsn}</td>
			</tr>
			<tr>
				<td width="100" bgcolor="<%=title_c%>">����</td>
				<td width="180" bgcolor="<%=value_c%>"><input type="radio"
					name="gender" value="M" checked="checked">���� <input
					type="radio" name="gender" value="W">����</td>
			</tr>
			<tr>
				<td width="100" bgcolor="<%=title_c%>">�̸���<font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="email" size="20" value="${member.email}"></td>
			</tr>
			<tr>
				<td width="100" bgcolor="<%=title_c%>">��ȭ��ȣ</td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="tel" size="20" value="${member.telNo}"></td>
			</tr>
			<tr>
				<td width="100" bgcolor="<%=title_c%>">�ڵ�����ȣ</td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="mobile" size="20" value="${member.mobileNo}"></td>
			</tr>
			<tr>
				<td width="100" bgcolor="<%=title_c%>">���ּ�</td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="address" size="20" value="${member.address}"></td>
			</tr>
			<tr>
				<td width="100" bgcolor="<%=title_c%>">Ȩ������</td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="homepage" size="20" value="${member.homepage}"></td>
			</tr>
			<tr>
				<td width="100" bgcolor="<%=title_c%>">����</td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="job" size="20" value="${member.job}"></td>
			</tr>
			<tr>
				<td width="100" bgcolor="<%=title_c%>">�ϰ������</td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="comments" size="20" value="${member.comments}"></td>
			</tr>
			<tr align="center">
				<td colspan="3" align="center" bgcolor="#FAFAD2">
					<table>
						<tr>
							<td><input type="image" src="img\modi.png"></td>
						</tr>
					</table>
				</td>

			</tr>

		</table>
	</form>

</body>
</html>