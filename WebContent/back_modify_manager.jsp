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
			��ѯ�޸�ɾ������Ա
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>����Ա���</th>
				<th>����Ա�û���</th>
				<th>����Ա����</th>
				<th>����Ա����</th>
				<th>�޸Ĺ���Ա</th>
				<th>ɾ������Ա</th>
			</tr>
			<c:forEach items="${back_managerList}" var="bu">
				<tr>
					<td>${bu.manager_id}</td>
					<td>${bu.manager_name }</td>
					<td>${bu.manager_password }</td>
					<td>${bu.manager_type }</td>
					<td align="center"><a href="modifyManagerDetail.do?manager_id=${bu.manager_id }">�޸Ĺ���Ա</a></td>
					<td align="center"><a href="deleteManager.do?manager_id=${bu.manager_id }">ɾ������Ա</a></td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>