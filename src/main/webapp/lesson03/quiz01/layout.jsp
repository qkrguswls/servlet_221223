<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동적 방식 - Layout 구성 - 전체페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
	#wrap {height:1000px;}
	header {height:80px;}
	nav {height:50px;}
	ul {list-style:none;}
	a, a:hover {color:#fff;}
	.contents {min-height:500px;}
	footer {height:30px;}
</style>
</head>
<body>
	<div id="wrap" class="container">
		<header>
			<h1 class="text-danger text-center">Sk Broadband IPTV</h1>
		</header>
		<nav class="bg-danger text-white d-flex align-items-center">
			<ul class="d-flex nav nav-fill w-100 align-items-center">
				<li class="nav-item"><a href="" class="nav-link">전체</a></li>
				<li class="nav-item"><a href="" class="nav-link">지상파</a></li>
				<li class="nav-item"><a href="" class="nav-link">드라마</a></li>
				<li class="nav-item"><a href="" class="nav-link">예능</a></li>
				<li class="nav-item"><a href="" class="nav-link">영화</a></li>
				<li class="nav-item"><a href="" class="nav-link">스포츠</a></li>
			</ul>
		</nav>
		<section class="contents bg-light">
			<table class="table text-center">
				<thead>
					<tr>
						<th>채널</th>
						<th>채널명</th>
						<th>카테고리</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</section>
		<footer class="d-flex align-items-center justify-content-center">
			<small>Copyright © marondal 2021</small>
		</footer>
	</div>
</body>
</html>














