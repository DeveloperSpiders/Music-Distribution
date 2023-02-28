<%@page import="com.soft.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  
<!-- Mirrored from uigaint.com/demo/html/anfra_2/register-5/register-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 03 Nov 2022 10:31:23 GMT -->
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Registration Successful</title>

    <!-- Custom Css --> 
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.2.0/css/fontawesome.css">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap" rel="stylesheet">

    <!-- Favicon -->
    <link rel="icon" href="../images/favicon.png">
    
    <style type="text/css">
    @import url('https://fonts.googleapis.com/css?family=Raleway:400,700');

* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;	
	font-family: Raleway, sans-serif;
}

body {
/* 	background: linear-gradient(90deg, #C7C5F4, #776BCC); */
	background-image: url('img/loginback.jpg');	
	background-size: cover;
}

.container {
	display: flex;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
	opacity: 1;
}

.screen {		
	background: linear-gradient(90deg, #5D54A4, #7C78B8);		
	position: relative;	
	height: 600px;
	width: 600px;	
	max-width: 98%;	
	box-shadow: 0px 0px 24px #5C5696;
}

.screen__content {
	z-index: 1;
	position: relative;	
	height: 100%;
}

.screen__background {		
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	z-index: 0;
	-webkit-clip-path: inset(0 0 0 0);
	clip-path: inset(0 0 0 0);	
}

.screen__background__shape {
	transform: rotate(45deg);
	position: absolute;
}

.screen__background__shape1 {
	height: 520px;
	width: 520px;
	background: #FFF;	
	top: -50px;
	right: 120px;	
	border-radius: 0 72px 0 0;
}

.screen__background__shape2 {
	height: 220px;
	width: 220px;
	background: #6C63AC;	
	top: -172px;
	right: 0;	
	border-radius: 32px;
}

.screen__background__shape3 {
	height: 540px;
	width: 190px;
	background: linear-gradient(270deg, #5D54A4, #6A679E);
	top: -24px;
	right: 0;	
	border-radius: 32px;
}

.screen__background__shape4 {
	height: 400px;
	width: 200px;
	background: #7E7BB9;	
	top: 420px;
	right: 50px;	
	border-radius: 60px;
}

.login {
	width: 320px;
	padding: 30px;
	padding-top: 56px;
}

.login__field {
	padding: 20px 0px;	
	position: relative;	
}

.login__icon {
	position: absolute;
	top: 30px;
	color: #7875B5;
}

.login__input {
	border: none;
	border-bottom: 2px solid #D1D1D4;
	background: none;
	padding: 10px;
	padding-left: 24px;
	font-weight: 700;
	width: 75%;
	transition: .2s;
}

.login__input:active,
.login__input:focus,
.login__input:hover {
	outline: none;
	border-bottom-color: #6A679E;
}

.login__submit {
	background: #fff;
	font-size: 14px;
	margin-top: 30px;
	padding: 16px 20px;
	border-radius: 26px;
	border: 1px solid #D4D3E8;
	text-transform: uppercase;
	font-weight: 700;
	display: flex;
	align-items: center;
	width: 100%;
	color: #4C489D;
	box-shadow: 0px 2px 2px #5C5696;
	cursor: pointer;
	transition: .2s;
}

.login__submit:active,
.login__submit:focus,
.login__submit:hover {
	border-color: #6A679E;
	outline: none;
}

.button__icon {
	font-size: 24px;
	margin-left: auto;
	color: #7875B5;
}

.social-login {	
	position: absolute;
	height: 94px;
	width: 100%;
	text-align: center;
	bottom: 0px;
	right: 0px;
	color: #000;
}

.social-icons {
	display: flex;
	align-items: center;
	justify-content: center;
}

.social-login__icon {
	padding: 20px 10px;
	color: #fff;
	text-decoration: none;	
	text-shadow: 0px 0px 8px #7875B5;
}

.social-login__icon:hover {
	transform: scale(1.5);	
}
    
    </style>


  </head>
  <body>
    

    <div class="ugf-block ugf-bg ugf-bg-1">
      <div class="form-block">
        <div class="container">
	<div class="screen">
		<div class="screen__content">
			<form class="" style="padding-top: 50px;" action="registration" method="post">
			
				<h2 style="text-align: center;">Registration Successful</h2>
				
				<%if(session.getAttribute("msg")!=null) {
					%>
			        <%
			        
					session.setAttribute("msg", null);
			        %>
			        
				<%}%>
			
				<%if(session.getAttribute("member")!=null){
					Member m = (Member)session.getAttribute("member");
					%>
					<table style="width: 90%; margin:auto;">
                        	<tr style=" border: 1px solid #fff;">
                        			<td style="text-align:center; padding:15px; font-size: 20px; font-weight:600; color: #000;" colspan="2">Dear <%=m.getFirstName() %> Your Registration has been Succesfull !</td>
                        	</tr>
                        	<tr style=" border: 1px solid #fff;">
                        		<td style="text-align: left; font-weight:600; padding:8px; text-indent: 15px; width:100px; font-size: 18px; color: #000; border: 1px solid;">Login Id :</td>
                        			<td style="text-align: center; font-weight:600;  font-size: 18px; color: #000; border: 1px solid;"><%=m.getLoginID() %> </td>
                        	</tr>
                        	<tr style=" border: 1px solid #fff;">
                        		<td style="text-align: left; padding:8px; text-indent: 15px; font-size: 18px; font-weight:600; color: #000; border: 1px solid;">Password :</td>
                        			<td style="text-align: center; font-weight:600; font-size: 18px; color: #000; border: 1px solid;"><%=m.getPassword()%></td>
                        			  
                        	</tr>
                        	<tr>		  
                        			<td style="text-align: left; padding:8px; text-indent: 15px; font-weight:600; font-size: 18px; color: #000; border: 1px solid;">Contact No. :</td>
                        			<td style="text-align: center; font-size: 18px; font-weight:600; color: #000; border: 1px solid; width: 100px;" ><%=m.getContactNumber() %></td>
                        			
                        	</tr>
                        	<tr>		  
                        			<td style="text-align: left; padding:8px; text-indent: 15px; font-weight:600; font-size: 18px; color: #000; border: 1px solid;">Email Id :</td>
                        			<td style="text-align: center; font-size: 18px; font-weight:600; color: #000; border: 1px solid; width: 100px;" ><%=m.getEmail() %></td>
                        			
                        	</tr>
                        	<tr style="border: 1px solid #fff ;">
                        			<td style="text-align: center; padding:15px; font-size: 20px; font-weight:600; font-weight:600; color: #000;" colspan="2">Please Login for More Information !<br><a href="#" style="color: #54ad0a;">www.rmcreator.in</a></td>
                        	</tr>
                        </table>
                         <%} %>			
			</form>
			<div class="social-login">
				<h3><a href="login">Login Now</a></h3>
				
				<h4><a href="index.jsp">Home</a></h4>
				<div class="social-icons">
					<a href="#" class="social-login__icon fab fa-instagram"></a>
					<a href="#" class="social-login__icon fab fa-facebook"></a>
					<a href="#" class="social-login__icon fab fa-twitter"></a>
				</div>
			</div>
		</div>
		<div class="screen__background">
			<span class="screen__background__shape screen__background__shape4"></span>
			<span class="screen__background__shape screen__background__shape3"></span>		
			<span class="screen__background__shape screen__background__shape2"></span>
			<span class="screen__background__shape screen__background__shape1"></span>
		</div>		
	</div>
</div>
      </div>
    </div>



  </body>

<!-- Mirrored from uigaint.com/demo/html/anfra_2/register-5/register-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 03 Nov 2022 10:31:30 GMT -->
</html>
