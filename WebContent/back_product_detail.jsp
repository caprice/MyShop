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
			��Ʒ��ϸ��Ϣ
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					��Ʒ���ƣ�
				</th>
				<td colspan="2">
					<c:out value="${back_productDetail.product_name}"/>
				</td>
			</tr>
			<tr>
				<th>
					��Ʒ�г��ۣ�
				</th>
				<td colspan="2">
					<c:out value="${back_productDetail.product_price}"/>
				</td>
			</tr>
			<tr>
				<th>
					��Ʒ��Ա�ۣ�
				</th>
				<td colspan="2">
					<c:out value="${back_productDetail.product_vip_price}"/>
				</td>
			</tr>
			<tr>
				<th>
					��Ҫ��Ϣ��
				</th>
				<td colspan="2">
					<c:out value="${back_productDetail.product_command_info}"/>
				</td>
			</tr>
			<tr>
				<th>
					��Ʒ�������
				</th>
				<td colspan="2">
					<c:out value="${back_productDetail.product_count}"/>
				</td>
			</tr>
			<tr>
				<th>
					��Ʒ����ʣ�
				</th>
				<td colspan="2">
					<c:out value="${back_productDetail.product_hit}"/>
				</td>
			</tr>
			<tr>
				<th>
					��ƷͼƬ��
				</th>
				<td align="center">
					<img src="${back_productDetail.product_image_path}"/>
				</td>
				<td>
					ͼƬ·����<c:out value="${back_productDetail.product_image_path}"/>
				</td>
			</tr>
			<tr>
				<th>
					��Ʒ���
				</th>
				<td colspan="2">
					${back_productDetail.productType.product_type_id }
				</td>
			</tr>
			
			<tr>
				<th>
					��ϸ��Ϣ��
				</th>
				<td colspan="2">
				<c:out value="${back_productDetail.product_detail_info}"/>
				</td>
			</tr>
		
		</table>
		<center>
			<a href="back_modify_product.jsp">���ص��б�</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="modifyProduct.do?product_id=${bp.product_id }">�޸���Ʒ��Ϣ</a>
		</center>
	</body>
</html>