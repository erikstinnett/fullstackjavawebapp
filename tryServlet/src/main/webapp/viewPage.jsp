<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>View Collection</title>
</head>
<body>
	<!-- Navbar section-->
	<nav class="navbar">
		<!-- Navbar affects everything in the navbar-->
		<div class="navbar_container">
			<!-- Affects logo + name-->
			<a href="homepage.html" id="navbar_logo"> <!-- Top left of navbar: just logo class-->
				<div class="logo">
					<img src="netflixlogo.png" width="50" height="50">
				</div>Java Project III <!-- subclass for image/icon-->
			</a>
			<ul class="navbar_menu">
				<li class="navbar_item">
					<!-- Class for all the navbar items/links--> <a href="viewPage.jsp"
					class="navbar_links">View</a> <!--Home link-->
				</li>
				<li class="navbar_item">
					<!-- Class for all the navbar items/links--> <a href="addPage.jsp"
					class="navbar_links">Add</a> <!--Home link-->
				</li>
				<li class="navbar_item">
					<!-- Class for all the navbar items/links--> <a
					href="deletePage.jsp" class="navbar_links">Delete</a> <!--Home link-->
				</li>
				<li class="navbar_item">
					<!-- Class for all the navbar items/links--> <a
					href="changePage.jsp" class="navbar_links">Change</a> <!--Home link-->
				</li>
				<li class="navbar_item"><a href="index.html"
					class="navbar_links">Log out</a>
				</li>
			</ul>
		</div>
	</nav>


	<form action=http://localhost:8081/tryServlet/SimpleServlet
		method="get">
		<fieldset>
			<% String selectionText = (String) request.getAttribute("dropDownOptions"); %>
			See the list of shows:  
			<input type="submit" value="See Shows!" name="seeShowsBtn"> <br>
			<% if (selectionText != null){ %>
				<%=selectionText%>
				<%}%><br> 
			<input type="submit" value="Show Details" name="specShowBtn">
			
			<%
				String show = (String) request.getAttribute("show");
				String desc = (String) request.getAttribute("showDesc");
			%>
			<br>Your show:
			<% if (desc != null){ %>
				<br><%=desc%>
			<%}%>
		</fieldset>
	</form>
</body>
</html>

	<style type="text/css">
body {
	background: linear-gradient(rgba(0, 0, 0, 1), rgba(0, 0, 0, 0.5)),
		url('background.png');
	background-repeat: no-repeat;
	background-color: black;
	background-size: cover;
	color: #fff;
}

.navbar {
	background: #131313;
	height: 80px;
	display: flex;
	justify-content: center; /* Center the item horizontally */
	align-items: center; /* Center the item vertically */
	font-size: 1.2rem; /* 1 rem = 16 px. 1.2rem == 19.2px*/
	position: sticky; /* Keeps position absolute */
	top: 0;
	z-index: 100;
	/* Position of navbar in relation to other (z axis). 999 puts navbar at very front */
}

.navbar_container {
	display: flex;
	justify-content: space-between;
	height: 80px;
	z-index: 1;
	width: 100%;
	max-width: 2500px;
	margin-right: auto; /* Space around border to the right */
	margin-left: auto; /* Space around border to the left */
	padding-right: 50px;
	padding-left: 50px; /* Distance from left side of page */
}

#navbar_logo {
	background-color: #fff;
	background-image: linear-gradient(to top, #ff0000 0%, #ffffff 100%);
	background-size: 100%;
	/* ------ Color and gradient applied only to the text */
	-webkit-background-clip: text;
	-moz-background-clip: text;
	-webkit-text-fill-color: transparent;
	-moz-text-fill-color: transparent;
	/* -------------------------------------------------- */
	display: flex;
	align-items: center;
	cursor: pointer;
	text-decoration: none; /* Decoration on text */
	font-size: 2rem;
}

.logo img {
	height: auto;
	width: 150px;
	padding-right: 10px;
	object-fit: cover;
}

/* Affects the position of the navbar links + button */
.navbar_menu {
	display: flex;
	align-items: center; /* y-axis alignment */
	list-style: none;
	text-align: right;
}

/* Specifically the links sans button */
.navbar_item {
	height: 80px; /* Aligns links to top of page */
}

/* Links */
.navbar_links {
	color: rgb(255, 0, 0); /* Set to white */
	font-size: 30px;
	font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
	display: flex;
	align-items: center;
	justify-content: right;
	text-decoration: none;
	padding: 0 1rem; /* y-axis, x-axis */
	height: 100%;
	margin-right: 30px;
}

.navbar_links:hover {
	color: #611515;
	transition: all 0.3s ease;
}

fieldset {
  font-weight:bold;
  margin-top: 20px;
  margin-left: 30vh;
  margin-right: 30vh;
  background: rgba(86, 77, 77, 0.473);
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 25vh;
  text-align: center;
}

 input[type="text"]{
  width: 400px;
}
 input[type="submit"]{
  background-color: #ffd900;
  color: white;
  cursor: pointer;
  padding: 8px 16px;
  text-decoration: none;
  margin: 4px 2px;
}
</style>