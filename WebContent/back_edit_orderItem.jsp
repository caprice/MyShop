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
			��ѯ�޸�ɾ��������
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>��������</th>
				<th>��������</th>
				<th>��Ʒ����</th>
				<th>��������</th>
				<th>��ѯ����</th>
				<th>��ѯ��Ʒ</th>
			</tr>
			<c:forEach items="${bakc_orderItemList}" var="bu">
				<tr>
					<td>${bu.order_item_id}</td>
					<td>${bu.sale_count }</td>
					<td>${bu.product.product_id }</td>
					<td>${bu.orders.order_id }</td>
					<td align="center"><a href="go_queryOrderDetail.do?order_id=${bu.orders.order_id }">��ѯ����</a></td>
					<td align="center"><a href="go_queryProductDetail.do?product_id=${bu.product.product_id }">��ѯ��Ʒ</a></td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>