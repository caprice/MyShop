<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>Insert title here</title>
		<link href="./css/style.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2>
			�û���ϸ��Ϣ
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					�û���ţ�
				</th>
				<td colspan="2">
					<c:out value="${back_user.user_id}"/>
				</td>
			</tr>
			<tr>
				<th>
					�û��ǳƣ�
				</th>
				<td colspan="2">
					<c:out value="${back_user.username}"/>
				</td>
			</tr>
			<tr>
				<th>
					�û���ʵ������
				</th>
				<td colspan="2">
					<c:out value="${back_user.truename}"/>
				</td>
			</tr>
			<tr>
				<th>
					�û�֤�����ͣ�
				</th>
				<td colspan="2">
					<c:out value="${back_user.certificate_type}"/>
				</td>
			</tr>
			<tr>
				<th>
					�û�֤�����룺
				</th>
				<td colspan="2">
					<c:out value="${back_user.certificate_num}"/>
				</td>
			</tr>
			<tr>
				<th>
					�û��Ա�
				</th>
				<td colspan="2">
					<c:out value="${back_user.sex}"/>
				</td>
			</tr>
			<tr>
				<th>
					�û���ַ��
				</th>
				<td>
					<c:out value="${back_user.address}"/>
				</td>
				
			</tr>
			<tr>
				<th>
					�û���ϵ��ʽ��
				</th>
				<td colspan="2">
					<c:out value="${back_user.tel}"/>
				</td>
			</tr>
			
			<tr>
				<th>
					�û�Email��
				</th>
				<td colspan="2">
				<c:out value="${back_user.email}"/>
				</td>
			</tr>
			<tr>
				<th>
					�û�������
				</th>
				<td colspan="2">
				<c:out value="${back_user.card_level}"/>
				</td>
			</tr>
			<tr>
				<th>
					�û����֣�
				</th>
				<td colspan="2">
				<c:out value="${back_user.member_score}��"/>
				</td>
			</tr>
			<tr>
				<th>
					������ʾ���⣺
				</th>
				<td colspan="2">
				<c:out value="${back_user.password_hint}"/>
				</td>
			</tr>
			<tr>
				<th>
					��ʾ����𰸣�
				</th>
				<td colspan="2">
				<c:out value="${back_user.password_result}"/>
				</td>
			</tr>
		
		</table>
		<center>
			<a href="userManager.do">���ص��б�</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="deleteUser.do?user_id=${back_user.user_id }">ɾ�����û�</a>
		</center>
	</body>
</html>