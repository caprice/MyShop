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
			��ѯ���޸Ĳ�Ʒ
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>��Ʒ���</th>
				<th>��Ʒ����</th>
				<th>��Ʒ�г���</th>
				<th>��Ʒ��Ҫ��Ϣ</th>
				<th>��Ʒ�����</th>
				<th>��Ʒ�����</th>
				<th>�鿴��ϸ��Ϣ</th>
				<th>�޸���Ʒ��Ϣ</th>
				<th>ɾ������Ʒ</th>
			</tr>
			<c:forEach items="${back_allProduct}" var="bp">
				<tr>
					<td>${bp.product_id }</td>
					<td>${bp.product_name }</td>
					<td>${bp.product_price }</td>
					<td>${bp.product_command_info }</td>
					<td>${bp.product_count }</td>
					<td>${bp.product_hit }</td>
					<td align="center"><a href="searchDetail.do?product_id=${bp.product_id }">�鿴��ϸ��Ϣ</a></td>
					<td align="center"><a href="modifyProduct.do?product_id=${bp.product_id }">�޸���Ʒ��Ϣ</a></td>
					<td align="center"><a href="deleteProduct.do?product_id=${bp.product_id }">ɾ������Ʒ</a></td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>