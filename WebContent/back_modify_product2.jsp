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
			�޸Ĳ�Ʒ��Ϣ
		</h2>
		<form action="modifyingProduct.do" method="post"> 
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					��Ʒ���ƣ�
				</th>
				<td colspan="2">
					<input type="text" name="product_name" value="${back_modifyList.product_name}">
				</td>
			</tr>
			<tr>
				<th>
					��Ʒ�г��ۣ�
				</th>
				<td colspan="2">
					<input type="text" name="product_price" value="${back_modifyList.product_price}">
				</td>
			</tr>
			<tr>
				<th>
					��Ʒ��Ա�ۣ�
				</th>
				<td colspan="2">
					<input type="text" name="product_vip_price" value="${back_modifyList.product_vip_price}">
				</td>
			</tr>
			<tr>
				<th>
					��Ҫ��Ϣ��
				</th>
				<td colspan="2">
					<input type="text" name="product_command_info" value="${back_modifyList.product_command_info}">
				</td>
			</tr>
			<tr>
				<th>
					��Ʒ�������
				</th>
				<td colspan="2">
					<input type="text" name="product_count" value="${back_modifyList.product_count}" />
				</td>
			</tr>
			<tr>
				<th>
					��ƷͼƬ��
				</th>
				<td align="center">
					<img src="D:/Procedure/JavaProject/workspace6.5/myshop/WebRoot/picture/${uploadForm.formFile.fileName }"/>
				</td>
				<td>
					ͼƬ·����<input type="text" name="product_image_path" value="./picture/${uploadForm.formFile.fileName }">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="back_modifyPicture.do">�޸Ĳ�ƷͼƬ</a>
				</td>
			</tr>
			<tr>
				<th>
					��Ʒ���
				</th>
				<td colspan="2">
					<input type="text" name="product_type_id" value="${back_modifyList.productType.product_type_id }">
				</td>
			</tr>
			<tr>
				<th>
					��ϸ��Ϣ��
				</th>
				<td colspan="2">
					<input type="text" name="product_detail_info" value="${back_modifyList.product_detail_info}">
				</td>
			</tr>
			<tr>
				<td align="right"><input type="submit" value="�ύ"></td>
				<td colspan="2" align="center"><input type="reset" value="����"></td>
			</tr>
		
		</table>
		</form>
	</body>
</html>