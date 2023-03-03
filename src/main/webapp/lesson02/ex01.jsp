<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- HTML 주석: 소스보기에서 보임(f12->Sources) -->
	<%-- JSP 주석: 소스보기에서 보이지 않음 --%>
	
	<%-- 1 --%>
	<%
		// Java문법 시작
		// scriptlet
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
	%>
	<strong>합계:</strong>
	<%-- sum을 나타내는 것 : expression문법 --%>
	<input type="text" value="<%= sum %>">
	<br>
	
	<%-- 2 --%>
	<%!
		// 선언문 - like 클래스
		// 필드
		private int num = 100;
	
		// 메소드
		public String getHelloWorld() {
			return "hello world";
		}
	%>
	<%= getHelloWorld() %>
	<br>
	
	<%-- 3 --%>
	<%= num + 200 %>
	
</body>
</html>











