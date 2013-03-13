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
			��Ӳ�Ʒ
		</h2>
		<form action="back_addProduct.do" method="post">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					��Ʒ���ƣ�
				</th>
				<td colspan="2">
					<input type="text" name="product_name" size="130" align="middle"/>
				</td>
			</tr>
			<tr>
				<th>
					��Ʒ�г��ۣ�
				</th>
				<td colspan="2">
					<input type="text" name="product_price" size="130" align="middle"/>
				</td>
			</tr>
			<tr>
				<th>
					��Ʒ��Ա�ۣ�
				</th>
				<td colspan="2">
					<input type="text" name="product_vip_price" size="130" align="middle"/>
				</td>
			</tr>
			<tr>
				<th>
					��Ҫ��Ϣ��
				</th>
				<td colspan="2">
					<input type="text" name="product_command_info" size="130" align="middle"/>
				</td>
			</tr>
			<tr>
				<th>
					��Ʒ�������
				</th>
				<td colspan="2">
					<input type="text" name="product_count" size="130" align="middle"/>
				</td>
			</tr>
			<tr>
				<th rowspan="2">
					��ƷͼƬ��
				</th>
				<td rowspan="2" width="37%" align="center">
					<img src="D:/Procedure/JavaProject/workspace6.5/myshop/WebRoot/picture/${uploadForm.formFile.fileName }"/>
				</td>
				<td>
					<a href="back_addPicture.do">���ͼƬ</a>
				</td>
			</tr>
			<tr>
				<td>
					��Ʒ·����<input type="text" name="product_image_path" value="./picture/${uploadForm.formFile.fileName }" size="57" align="middle"/>
				</td>
			</tr>
			
			<tr>
				<th>
					��Ʒ���
				</th>
				<td colspan="2">
					<select name="product_type_id">
						<c:forEach items="${back_productTypeList}" var="bp">
							<option value="${bp.product_type_id }">------${bp.product_type_name }------</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			
			<tr>
				<th>
					��ϸ��Ϣ��
				</th>
				<td colspan="2">
					<textarea rows="15" cols="110" name="product_detail_info"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<input type="submit" value="�ύ" />
					&nbsp;&nbsp;
					<input type="reset" value="����" />
				</td>
			</tr>
		</table>
		</form>
	</body>
</html>