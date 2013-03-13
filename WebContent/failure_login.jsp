<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    
<%@ taglib  prefix="bean" uri="http://struts.apache.org/tags-bean"%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="./css/header2_setup.css" />
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="./css/layout4_setup.css" />
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="./css/layout4_text.css" />
  <link rel="icon" type="image/x-icon" href="./img/favicon.ico" />
  <title><bean:message key="user.login.fail"/></title>
</head>

<body>
  <div class="page-container">
    <div class="header">
      <div class="header-top">
        <a class="sitelogo" href="index.do" title="Go to Start page"></a>
         <div class="sitename">
          <h1><a href="index.html" title="Go to Start page">SEVERUS&bull;SHOP<span style="font-weight:normal;font-size:50%;">&nbsp;����֮��</span></a></h1>
          <h2>********************************************</h2>
        </div>
    
        <!-- Navigation Level 0 -->
        <div class="nav0">
          <ul>
            <li><a href="#" title="Pagina home in China"><img src="./img/china.bmp" alt="Image description" /></a></li>
            <li><a href="#" title="Homepage auf American"><img src="./img/usa.bmp" alt="Image description" /></a></li>
          </ul>
        </div>			

        <!-- Navigation Level 1 -->
        <div class="nav1">
          <ul>
           <li><a href="index.do" title="Go to Start page"><bean:message key="index.page"/></a></li>
            <li><a href="showAll.do"><bean:message key="all.product"/></a></li>
            <li><a href="#"><bean:message key="goke.bbs"/></a></li>	
            <li><a href="buy.do?method=add"><bean:message key="myshopping.cart"/></a></li>																	
            <li><a href="about.do"><bean:message key="about"/></a></li>
          </ul>
        </div>              
      </div>
      
      <div class="header-middle">    
   
        <div class="sitemessage">
          <h1><bean:message key="easy"/> &bull; <bean:message key="convenience"/> &bull; <bean:message key="fashion"/> &bull; <bean:message key="facility"/> </h1>
          <h2><a href="buy.do?method=add"><img src="./img/shoppingcart.png"></img></a></h2>
          <h2>&rsaquo;&rsaquo;&nbsp;<bean:message key="myshopping.cart"/></h2>
        </div>       
      </div>
      
      <div class="header-breadcrumbs">
        <ul>
          <li><a href="index.do" title="Go to Start page"><bean:message key="index.page"/></a></li>
            <li><a href="showAll.do"><bean:message key="all.product"/></a></li>
            <li><a href="#"><bean:message key="goke.bbs"/></a></li>	
            <li><a href="buy.do?method=add"><bean:message key="myshopping.cart"/></a></li>
          <li><a href="advice.do"><bean:message key="advice"/></a></li>																	
            <li><a href="about.do"><bean:message key="about"/></a></li>
        </ul>
      </div>
    </div>
    
    <hr/>                    
        <div class="column1-unit">
        <h1>&nbsp;&nbsp;<bean:message key="sorry.your.username.password"/></h1><br/>                           
          
          <form action="logining.do" method="post">
          
          <table cellspacing="20%">
          	
          	<tr>
          		<th><bean:message key="user.username"/></th>
          		<td colspan="2">&nbsp;&nbsp;<input type="text" name="username" size="35"/></td>
          	</tr>
          	<tr>
          		<th><bean:message key="user.password"/></th>
          		<td colspan="2">&nbsp;&nbsp;<input type="password" name="password" size="35"/></td>
          	</tr>
          	<tr align="center">
          		<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;
          			<a href="#"><font size="4" color="red"><bean:message key="forget.password"/></font></a><br><br>
          		</td>
          	</tr>
          	<tr align="center">
          		<td> </td>
          		<td><input type="submit" value="<bean:message key="ok"/>"/>
          		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          		<input type="reset" value="<bean:message key="reset"/>"/></td>
          	</tr>
          </table>
          </form>
        </div>
		<br/><br/><br/><br/><br/><br/><br/>
      </div>
      
      <center>
	  	<div class="footer" >
	      <p>Copyright &copy; 2009 Severus Shop | All Rights Reserved</p>
	      <p class="credits">Design by Severus.</p>
	    </div>
    </center>
   
</body>
</html>