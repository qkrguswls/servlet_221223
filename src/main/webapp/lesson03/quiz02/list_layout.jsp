<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>종합문제</title>
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
</style>
</head>
<body>
	<div id="wrap" class="container">
		<header class="d-flex align-items-center justify-content-left">
			<div id="logo"><a href=""  class="text-success">Melong</a></div>
			<input type="text" class="form-control col-5">
			<button type="submit" class="btn btn-info">검색</button>
		</header>
		<nav>
			<ul class="nav align-items-center">
				<li class="nav-item"><a href="" class="nav-link">멜롱차트</a></li>
				<li class="nav-item"><a href="" class="nav-link">최신음악</a></li>
				<li class="nav-item"><a href="" class="nav-link">장르음악</a></li>
				<li class="nav-item"><a href="" class="nav-link">멜롱DJ</a></li>
				<li class="nav-item"><a href="" class="nav-link">뮤직어워드</a></li>
			</ul>
		</nav>
		<section class="contents">
			<div class="content1 border border-success">
				<div class="d-flex align-items-top justify-content-left pt-3 pl-3">
					<div class="left-box mr-3"><img src="https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et_400x400.jpg"></div>
					<div class="right-box">
						<h3>아이유</h3>
						<h4>EDAM엔터테인먼트</h4>
						<h4>2008 데뷔</h4>
					</div>
				</div>
			</div>
			<div class="content2">
				<h2>곡 목록</h2>
				<table class="table text-center">
					<thead>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					<tbody>
						<%
							// 아티스트 정보 
							
							    Map<String, Object> artistInfo = new HashMap<>();
							    artistInfo.put("name", "아이유");
							    artistInfo.put("debute", 2008);
							    artistInfo.put("agency", "EDAM엔터테인먼트");
							    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");
							
							
							// 아이유 노래 리스트 
							    List<Map<String, Object>> musicList = new ArrayList<>();
							
							    Map<String, Object> musicInfo = new HashMap<>();
							    musicInfo.put("id", 1);
							    musicInfo.put("title", "팔레트");
							    musicInfo.put("album", "Palette");
							    musicInfo.put("singer", "아이유");
							    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
							    musicInfo.put("time", 217);
							    musicInfo.put("composer", "아이유");
							    musicInfo.put("lyricist", "아이유");
							    musicList.add(musicInfo);
							
							    musicInfo = new HashMap<>();
							    musicInfo.put("id", 2);
							    musicInfo.put("title", "좋은날");
							    musicInfo.put("album", "Real");
							    musicInfo.put("singer", "아이유");
							    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
							    musicInfo.put("time", 233);
							    musicInfo.put("composer", "이민수");
							    musicInfo.put("lyricist", "김이나");
							    musicList.add(musicInfo);
							
							    musicInfo = new HashMap<>();
							    musicInfo.put("id", 3);
							    musicInfo.put("title", "밤편지");
							    musicInfo.put("album", "palette");
							    musicInfo.put("singer", "아이유");
							    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
							    musicInfo.put("time", 253);
							    musicInfo.put("composer", "제휘,김희원");
							    musicInfo.put("lyricist", "아이유");
							    musicList.add(musicInfo);
							
							    musicInfo = new HashMap<>();
							    musicInfo.put("id", 4);
							    musicInfo.put("title", "삐삐");
							    musicInfo.put("album", "삐삐");
							    musicInfo.put("singer", "아이유");
							    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
							    musicInfo.put("time", 194);
							    musicInfo.put("composer", "이종훈");
							    musicInfo.put("lyricist", "아이유");
							    musicList.add(musicInfo);
							
							    musicInfo = new HashMap<>();
							    musicInfo.put("id", 5);
							    musicInfo.put("title", "스물셋");
							    musicInfo.put("album", "CHAT-SHIRE");
							    musicInfo.put("singer", "아이유");
							    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
							    musicInfo.put("time", 194);
							    musicInfo.put("composer", "아이유,이종훈,이채규");
							    musicInfo.put("lyricist", "아이유");
							    musicList.add(musicInfo);
							
							    musicInfo = new HashMap<>();
							    musicInfo.put("id", 6);
							    musicInfo.put("title", "Blueming");
							    musicInfo.put("album", "Love poem");
							    musicInfo.put("singer", "아이유");
							    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
							    musicInfo.put("time", 217);
							    musicInfo.put("composer", "아이유,이종훈,이채규");
							    musicInfo.put("lyricist", "아이유");
							    musicList.add(musicInfo);
							    
							    for (int i = 0; i < musicInfo.size(); i++) {
							%>
						<tr>
							<td><%= musicInfo.get("id") %></td>
							<td><%= musicInfo.get("title") %></td>
							<td><%= musicInfo.get("album") %></td>
						</tr>
						<%
							    }
						%>
					</tbody>
				</table>
			</div>
		</section>
		<footer>Copyright © marondal 2021</footer>
	</div>
</body>
</html>


















