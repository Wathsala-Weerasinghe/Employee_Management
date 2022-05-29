<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Account</title>
<link href="assets/css/uaccount.css" rel="stylesheet" />
</head>
<body>
<div id="main">
			<nav>
				<img src="assets/img/logo.png"" width="250" height="150">
				<ul>
					<li><a href="#">Contact Us</a></li>
					<li><a href="#">Salary Sheet</a></li>
					<li><a href="tlogin.jsp">Time Sheet</a></li>
					<li><a href="EmpDInsert.jsp">Add/Remove employee</a></li>
					<a href="useraccount.jsp">
					<button class ="myaccount" type = "button">My Account</button></a>
					<a href="login.jsp">
					<button class ="logout" type = "button"> Log Out</button>
					</a>
				</ul>
			</nav>
			<!---end of navigation bar-->
			
<style>
    body  {
       background-image: url("assets/img/t10.jpg");
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
<div class="productData" id="tbl" style="color:white">
		<table id="tbl1" border="1" width="75%">
		<h3>

	<c:forEach var="emp" items="${empDetails}">
	
	<c:set var = "id" value = "${emp.id}"/> 
	<c:set var = "email" value = "${emp.name}"/> 
	<c:set var = "name" value = "${emp.email}"/> 
	<c:set var = "phone" value = "${emp.phone}"/> 
	<c:set var = "uName" value = "${emp.uName}"/> 
	<c:set var = "pass" value = "${emp.pass}"/> 
  
	
	<tr>
		<td>Employee ID</td>
		<td>${emp.id}</td>
	</tr>
	<tr>
		<td>Employee Name</td>
		<td>${emp.name}</td>
	</tr>
	<tr>
		<td>Employee Email</td>
		<td>${emp.email}</td>
	</tr>
	
	<tr>
		<td>Employee Phone</td>
		<td>${emp.phone}</td>
	</tr>
	
	<tr>
		<td>Employee User name</td>
		<td>${emp.uName}</td>
	</tr>
	<tr>
		<td>Employee Password</td>
		<td>${emp.pass}</td>
	</tr>
	
</c:forEach>
</h3>
</table>
</div>


<c:url value = "UpdateEmp.jsp" var="empupdate">
	<c:param name = "id" value = "${id}"/> 
	<c:param name= "email" value = "${name}"/> 
	<c:param name = "name" value = "${email}"/> 
	<c:param name = "phone" value = "${phone}"/> 
	<c:param name = "uName" value = "${uName}"/> 
	<c:param name = "pass" value = "${pass}"/> 
</c:url>

<a href ="${empupdate}">
<input type ="button" class ="up"  name = "UpEmp" value ="Update Employee Profile">
</a>

<br>

<c:url value = "deleteEmployee.jsp" var="Edelete">
	<c:param name = "id" value = "${id}"/> 
	<c:param name= "email" value = "${name}"/> 
	<c:param name = "name" value = "${email}"/> 
	<c:param name = "phone" value = "${phone}"/> 
	<c:param name = "uName" value = "${uName}"/> 
	<c:param name = "pass" value = "${pass}"/> 
</c:url>

<a href ="${Edelete}">
<input type ="button" class ="del" name = "EpDelete" value ="Delete Employee Profile">
</a>

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
					<li><a href="register.html">Sign Up</a></li>
					<li><a href="login.html">Sign In</a></li>
					
				</ul>
			</div>
				<br>

			
			<div class="footerItem">
				<h2>Contact Us</h2>
				<div class="border"></div>
				<ul>
					
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
	
	</h3>	
		</center>
</body>
</html>
