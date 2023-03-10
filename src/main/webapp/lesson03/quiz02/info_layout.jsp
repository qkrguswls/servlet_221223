<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>종합문제 - info</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
	.container {height:1000px;}
	header {height:100px;}
	#logo {font-size:25px; font-weight:bold; margin:0 40px 0 0;}
	nav {height:50px;}
	nav a, nav a:hover {color:#333;}
	.content1 {height:200px;}
	.content1 img {width:160px;}
	.right-box > h3 {font-weight:bold;}
	.right-box > h4 {font-size:17px;}
	.content2 > h2 {font-size:20px; font-weight:bold;}
	.music-info-text {font-size:12px;}
</style>
</head>
<body>
	<div id="wrap" class="container">
		<header class="d-flex align-items-center justify-content-left">
			<jsp:include page="header.jsp"></jsp:include>
		</header>
		<nav>
			<jsp:include page="menu.jsp" />
		</nav>
		<section class="contents">
			<jsp:include page="info_content.jsp" />
		</section>
		<footer>
			<jsp:include page="footer.jsp" />
		</footer>
	</div>
</body>
</html>


















