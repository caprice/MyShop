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
			��ӹ���Ա 
		</h2>
		<form action="back_adding_manager.do" method="post">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					����Ա�û�����
				</th>
				<td colspan="2">
					<input type="text" name="manager_name" size="130" align="middle"/>
				</td>
			</tr>
			<tr>
				<th>
					����Ա���룺
				</th>
				<td colspan="2">
					<input type="text" name="manager_password" size="130" align="middle"/>
				</td>
			</tr>
			<tr>
				<th>
					����Ա���ͣ�
				</th>
				<td colspan="2">
					<select name="manager_type" size="1">
							<option value="super_admin">------��������Ա------</option>
							<option value="order_admin">------��������Ա------</option>
							<option value="product_admin">------��Ʒ����Ա------</option>
							<option value="user_admin">------�û�����Ա------</option>
							<option value="pay_type_admin">------���ʽ����Ա------</option>
							<option value="product_type_admin">------��Ʒ���͹���Ա------</option>
					</select>
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