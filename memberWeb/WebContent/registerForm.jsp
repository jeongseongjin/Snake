<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="color.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������ ���</title>
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
				<td colspan="3"><b>ȸ������</b></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>���̵�</b><font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="id" size="21" maxlength="15"> <font color="blue" >3���� �̻� �������� �ۼ�</font></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>��й�ȣ</b><font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="password"
					name="passwd" size="21"><font color="blue" > 4�� �̻� �Է�</font></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>��й�ȣȮ��</b><font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="password"
					name="repasswd" size="21"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>�̸�</b><font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="name" size="21"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>�ֹε�Ϲ�ȣ</b><font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>">
				<input type="text" name="jumin1" size="6" maxlength="6">-
				<input type="text" name="jumin2" size="7" maxlength="7"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>����</b></td>
				<td width="180" bgcolor="<%=value_c%>">
					&nbsp &nbsp <input type="radio" name="gender" value="M" checked="checked">����
					&nbsp &nbsp <input type="radio" name="gender" value="W">����
				</td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>�̸���</b><font color="red">(*)</font></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="email" size="21"><font color="blue" > ǥ���Է´�� �Է�</font></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>��ȭ��ȣ</b></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="tel" size="21"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>�ڵ�����ȣ</b></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="mobile" size="21"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>���ּ�</b></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="address" size="21"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>Ȩ������</b></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="homepage" size="21"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>����</b></td>
				<td width="180" bgcolor="<%=value_c%>"><input type="text"
					name="job" size="21"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=title_c%>"><b>�ϰ������</b></td>
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