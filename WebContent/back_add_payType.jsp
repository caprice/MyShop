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
			��Ӹ��ʽ
		</h2>
		<form action="add_pay_type.do" method="post">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					���ʽ���ƣ�
				</th>
				<td colspan="2">
					<input type="text" name="pay_type_name" size="130" align="middle"/>
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