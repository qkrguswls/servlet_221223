<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	<%
		Calendar today = Calendar.getInstance();
		out.print(today.getTime() + "<br>");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		out.print("오늘 날짜: " + sdf.format(today.getTime()) + "<br>");
		// Calendar는 date객체로 변환후 format메소드에 적용해야함
		
		// 어제 날짜
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
		Calendar yesterday = Calendar.getInstance();
		yesterday.add(Calendar.DATE, -1); //DATE단위로 계산할거다, 하루 전을!
		// yesterday.add(Calendar.MONTH, -1); //MONTH단위로 계산해서 한달 전을!
		// yesterday.add(Calendar.YEAR, -1); //1년 전
		out.print("어제 날짜: " + sdf2.format(yesterday.getTime()) + "<br>");
		
		// 두 날짜 비교
		// compareTo
		// a.compareTo(b) a(기준값)이 크면 1, 같으면 0, a가 작으면 -1이 나옴
		int result = today.compareTo(yesterday);
		if (result > 0) { //a == 1을 이렇게 표기함
			out.print("today(기준값)이 더 크다");
		} else if (result == 0) {
			out.print("두 날짜는 같다");
		} else {
			out.print("today가 더 작다");
		}
	%>
</body>
</html>













