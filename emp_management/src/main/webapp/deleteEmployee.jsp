<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Employee Delete</title>
<link href="assets/css/delemp.css" rel="stylesheet" />
</head>
<body>
<div id="main">
			<nav>
				<img src="assets/img/logo.png"" width="250" height="150">
				<ul>
					<li><a href="#">Contact Us</a></li>
					<li><a href="#">Salary Sheet</a></li>
					<li><a href="tlogin.jsp">Time Sheet</a></li>
					<li><a href="#">Add/Remove employee</a></li>
					<a href="#">
					<button class ="myaccount" type = "button">My Account</button></a>
					<a href="login.jsp">
					<button class ="logout" type = "button"> Log Out</button>
					</a>
				</ul>
			</nav>
			<!---end of navigation bar-->
			<style>
    body  {
       background-image: url("assets/img/t13.jpg");
       background-color: #cccccc;
       background-size: cover;
       background-attachment: fixed;
     }
 </style>
			<center>   
  	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String uName =request.getParameter("uName");
		String pass = request.getParameter("pass");
	%>
	
	<h4>TEmployee Profile Delete!!</h4>
	<form action="Delete" method = "post">

<div class="productData" id="tbl" style="color:white">
		<table id="tbl1" border="1" width="75%">

<tr><td>Employee ID</td><td>
<input type ="text" name="id" value = "<%= id%>"readonly><br></td></tr>
<tr><td>Employee Name</td><td>
 <input type ="text" name="name" value = "<%= name%>"readonly><br></td></tr>
<tr><td>Employee Email</td><td>
 <input type ="text" name="email" value = "<%= email%>"readonly><br></td></tr>
<tr><td>Employee Phone Number</td><td>
 <input type ="text" name="phone" value = "<%= phone%>"readonly><br></td></tr>
<tr><td>Employee User Name </td><td>
<input type ="text" name="uName" value = "<%= uName%>"readonly><br></td></tr>
<tr><td>Employee Password </td><td>
<input type ="text" name="pass" value = "<%= pass%>"readonly><br></td></tr>

<tr>
<input type ="submit"  class = "del" name = "submit" value ="Delete Employee Profile">

</tr>
</table>
</div>
</form>

<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	
	<div class="footer">
			<div class="innerFooter">
				<div class="footerItem">
				<h3>Dazzale Homes</h3>
				<h3></h3>
				<p>As the No.01 premier licensed online apartment sales system in sri lanka,Dazzale Homes Pvt Ltd. is known for their incomparable professionalism in handling housing and apartment resolutions, fulfilling complete customer satisfaction with a vision, thriving with an unfaltering mission while contributing to sustainability and country's infrastructure.</p>
				<a href="https://maps.google.lk/">
				<img src="assets/img/map.jpg" width="250" height="150">
				</a>
			</div>
			<div class="footerItem">
				<h2>Site Map</h2>
				<div class="border"></div>
				<ul>
					<li><a href="Homepage.html">Home</a></li>
					<li><a href="contact.html">Contact Us</a></li>
					<li><a href="about.html">About Us</a></li>
					<li><a href="purchaseApart.html">Leave Application</a></li>
					<li><a href="rentApart.html">Salary Sheet</a></li>
					<li><a href="register.html">Sign Up</a></li>
					<li><a href="login.html">Sign In</a></li>
					<li><a href="add.html">Add Employee</a></li>
					
				</ul>
			</div>
				<br>

			
			<div class="footerItem">
				<h2>Contact Us</h2>
				<div class="border"></div>
				<ul>
					<li><a href="#">Dazzale Homes</a></li>
					<a href="https://maps.google.lk/">
					<li><i class="map-marker" aria-hidden="true"></i> No.28/2,Palawatta Road,Stanmore Crecent,Colombo 07,Sri Lanka</li><br>
					</a>
					<a href="https://www.sliit.lk">
					<li><i class="phone" aria-hidden="true"></i> Senkada:(+94-763451877)</li>
					</a>
					<a href="https://www.sliit.lk">
					<li><i class="phone" aria-hidden="true"></i> Hotline:(+94-0112888445)</li>
					</a>
					<a href="https://www.google.com/gmail/about/">
					<li><i class="envelope" aria-hidden="true"></i> DazzaleHomes@gmail.com</li>
					</a>
				</ul>
			</div>
		</div>
		<!-------------------------End of the footer------------------------------------>		
<center>
	<h3>Copyright ? 2020 Online Apartment Sales system Powered by ABC Technologies ?. All rights reserved.
	</h3>	
		</center>
</body>
</html>