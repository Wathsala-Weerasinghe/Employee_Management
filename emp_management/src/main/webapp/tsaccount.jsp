<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> TimeSheet</title>
<link href="assets/css/tsaccount.css" rel="stylesheet" />
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
       background-image: url("assets/img/t2.jpg");
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
	<c:forEach var="ts" items="${tshDetails}">
	
	<c:set var = "id" value = "${ts.id}"/> 
	<c:set var = "email" value = "${ts.email}"/> 
	<c:set var = "name" value = "${ts.name}"/> 
	<c:set var = "mid" value = "${ts.mid}"/> 
	<c:set var = "wTime" value = "${ts.wTime}"/> 
	<c:set var = "wDes" value = "${ts.wDes}"/>     
		
	<tr>
		<td>Employee ID</td>
		<td>${ts.id}</td>
	</tr>
	
	<tr>
		<td>Employee Email</td>
		<td>${ts.email}</td>
	</tr>
	
	<tr>
		<td>Employee Name</td>
		<td>${ts.name}</td>
	</tr>
	<tr>
		<td>Manager Id</td>
		<td>${ts.mid}</td>
	</tr>
	
	<tr>
		<td>Employee Work Time</td>
		<td>${ts.wTime}</td>
	</tr>
	
	<tr>
		<td>Employee Work Description</td>
		<td>${ts.wDes}</td>
	</tr>
	
</c:forEach>
</h3>
</table>
</div>


<c:url value = "updateTS.jsp" var="timeupdate">
<c:param name="id" value = "${id}"/>
<c:param name="email" value = "${email}"/>
<c:param name="name" value = "${name}"/>
<c:param name="mid" value = "${mid}"/>
<c:param name="wTime" value = "${wTime}"/>
<c:param name="wDes" value = "${wDes}"/>
</c:url>

<a href ="${timeupdate}">
<input class ="up" type ="button" name = "update" value ="Update Time Sheet">
</a>


<br>
<c:url value = "deleteTS.jsp" var="timedelete">
<c:param name="id" value = "${id}"/>
<c:param name="email" value = "${email}"/>
<c:param name="name" value = "${name}"/>
<c:param name="mid" value = "${mid}"/>
<c:param name="wTime" value = "${wTime}"/>
<c:param name="wDes" value = "${wDes}"/>
</c:url>

<a href ="${timedelete}">
<input class ="del"  type ="button" name = "delete" value ="Delete Time Sheet">
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
					<li><a href="purchaseApart.html">Purchase an apartment</a></li>
					<li><a href="rentApart.html">Rent an apartment</a></li>
					<li><a href="register.html">Sign Up</a></li>
					<li><a href="login.html">Sign In</a></li>
					<li><a href="add.html">Add and Remove advertisement</a></li>
					
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
	<h3>Copyright © 2020 Online Apartment Sales system Powered by ABC Technologies ®. All rights reserved.
	</h3>	
		</center>

</body>
</html>