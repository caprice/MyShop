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
			��ѯ������Ʒ����ϸ��Ϣ
		</h2>
		<table border="1" width="90%">
			<tr align="left">
				<th>
					<font size="4"> &nbsp;&nbsp;��ƷͼƬ</font>
				</th>
				<td>
					&nbsp;&nbsp;
					<img src="${product.product_image_path }" />
				</td>
			</tr>
			<tr align="left">
				<th>
					<font size="4"> &nbsp;&nbsp;��Ʒ����</font>
				</th>
				<td>
					<font size="2"> &nbsp;&nbsp;${product.product_name }</font>
				</td>
			</tr>
			<tr align="left">
				<th>
					<font size="4"> &nbsp;&nbsp;��Ʒ�г���</font>
				</th>
				<td>
					<font size="2"> &nbsp;&nbsp;${product.product_price }</font>
				</td>
			</tr>
			<tr align="left">
				<th>
					<font size="4"> &nbsp;&nbsp;��Ʒ��Ա��</font>
				</th>
				<td>
					<font size="2"> &nbsp;&nbsp;${product.product_vip_price }</font>
				</td>
			</tr>
			<tr align="left">
				<th>
					<font size="4"> &nbsp;&nbsp;��Ʒ��Ҫ��Ϣ</font>
				</th>
				<td>
					<font size="2"> &nbsp;&nbsp;${product.product_command_info }</font>
				</td>
			</tr>
			<tr align="left">
				<th>
					<font size="4"> &nbsp;&nbsp;��Ʒ��ϸ��Ϣ</font>
				</th>
				<td>
					<font size="2"> &nbsp;&nbsp;${product.product_detail_info }</font>
				</td>
			</tr>
			<tr align="left">
				<th>
					<font size="4"> &nbsp;&nbsp;��Ʒ�����</font>
				</th>
				<td>
					<font size="2"> &nbsp;&nbsp;${product.product_hit }</font>
				</td>
			</tr>
			<tr align="left">
				<th>
					<font size="4"> &nbsp;&nbsp;�������Ʒ</font>
				</th>
				<td>
					&nbsp;&nbsp;
					<a href="buy.do?method=add&product_id=${product.product_id }">
					<font size="2">��ӵ����ﳵ</font>
					</a>
				</td>
			</tr>
		</table>

	</body>
</html>