<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>Insert title here</title>
		<link href="./css/style.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<form action="back_login.do" id="loginForm" method="post">
			<h3>
				��̨����Ա��¼
			</h3>
			<center>
				<font size="4">��&nbsp;&nbsp;��&nbsp;&nbsp;��:</font>
				<input name="manager_name" type="text" size="25" />
				<br>
				<br>
				<font size="4">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��:</font>
				<input type="password" name="manager_password" size="27" />
				<br>
				<br>
				<font size="4">����Ա����:</font>
				<select name="manager_type" size="1">
					<option value="super_admin">
						----��������Ա----
					</option>
					<option value="order_admin">
						----��������Ա----
					</option>
					<option value="product_admin">
						----��Ʒ����Ա----
					</option>
					<option value="user_admin">
						----�û�����Ա----
					</option>
					<option value="pay_type_admin">
						---���ʽ����Ա--
					</option>
					<option value="product_type_admin">
						---��Ʒ������Ա--
					</option>
				</select>
				<br>
				<br>
				<br>
				<input type="submit" value="��&nbsp;&nbsp;&nbsp;&nbsp;��">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="��&nbsp;&nbsp;&nbsp;&nbsp;��">
			</center>
		</form>
	</body>
</html>