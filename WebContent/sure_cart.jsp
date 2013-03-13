<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link rel="stylesheet" type="text/css" media="screen,projection,print"
			href="./css/header2_setup.css" />
		<link rel="stylesheet" type="text/css" media="screen,projection,print"
			href="./css/layout4_setup.css" />
		<link rel="stylesheet" type="text/css" media="screen,projection,print"
			href="./css/layout4_text.css" />
		<link rel="icon" type="image/x-icon" href="./img/favicon.ico" />
		<title>ȷ�Ϲ��ﳵ</title>
	</head>

	<body>
		<div class="page-container">
			<div class="header">
				<div class="header-top">
					<br>
					<div class="sitename">
						<h1>
							<a href="index.do" title="Go to Start page">SEVERUS&bull;SHOP<span
								style="font-weight: normal; font-size: 50%;">&nbsp;����֮��</span>
							</a>
						</h1>
						<h2>
							********************************************
						</h2>
					</div>

					<!-- Navigation Level 0 -->
					<div class="nav0">
						<ul>
							<li>
								<a href="#" title="Pagina home in China"><img
										src="./img/china.bmp" alt="Image description" />
								</a>
							</li>
							<li>
								<a href="#" title="Homepage auf American"><img
										src="./img/usa.bmp" alt="Image description" />
								</a>
							</li>
						</ul>
					</div>

					<!-- Navigation Level 1 -->
					<div class="nav1">
						<ul>
							<li>
								<a href="index.do" title="Go to Start page">��ҳ</a>
							</li>
							<li>
								<a href="showAll.do">ȫ����Ʒ</a>
							</li>
							<li>
								<a href="#">������̳</a>
							</li>
							<li>
								<a href="buy.do?method=add">�ҵĹ��ﳵ</a>
							</li>
							<li>
								<a href="about.do">����</a>
							</li>
						</ul>
					</div>
				</div>

				<div class="header-middle">

					<div class="sitemessage">
						<h1>
							�� &bull; ���� &bull; ʱ�� &bull; ���
						</h1>
						<h2>
							<a href="buy.do?method=add"><img src="./img/shoppingcart.png"></img>
							</a>
						</h2>
						<h2>
							&rsaquo;&rsaquo;&nbsp;�ҵĹ��ﳵ
						</h2>
					</div>
				</div>

				<div class="header-breadcrumbs">
					<ul>
						<li>
							<a href="index.do" title="Go to Start page">��ҳ</a>
						</li>
						<li>
							<a href="showAll.do">ȫ����Ʒ</a>
						</li>
						<li>
							<a href="#">������̳</a>
						</li>
						<li>
							<a href="buy.do?method=add">�ҵĹ��ﳵ</a>
						</li>
						<li>
							<a href="advice.do">��ҪͶ��</a>
						</li>
						<li>
							<a href="about.do">����</a>
						</li>
					</ul>
				</div>
			</div>

			<hr />
			<div>
				<h1>
					&nbsp;&nbsp;���Ķ�����ϢΪ
				</h1>
				<br />
				<form action="order_detail.do" method="post">
					<center>
						<table align="center" border="1" width="80%">
							<tr>
								<th>
									<font size="4"> �� Ʒ �� �� </font>
								</th>
								<th>
									<font size="4"> �� Ʒ �� �� </font>
								</th>
								<th>
									<font size="4"> �� Ʒ �� �� </font>
								</th>
							</tr>
							<c:forEach items="${cartList}" var="c">
								<tr>
									<td>
										<font size="3">${c.product_id } ${c.product_name} </font>
									</td>
									<td>
										<font size="3"> ${c.sale_count} </font>
									</td>
									<td>
										<font size="3"> ${c.product_price } </font>
									</td>
								</tr>
							</c:forEach>
							<tr>
								<td colspan="3" align="right">
									<input type="submit" value="��д������Ϣ" />
								</td>
							</tr>
						</table>
					</center>
				</form>
			</div>
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
		</div>

		<center>
			<div class="footer">
				<p>
					Copyright &copy; 2009 Severus Shop | All Rights Reserved
				</p>
				<p class="credits">
					Design by Severus.
				</p>
			</div>
		</center>

	</body>
</html>