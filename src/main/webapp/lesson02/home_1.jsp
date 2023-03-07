<%@page import="java.util.Iterator"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
</head>
<body>
	<%
		int number1 = Integer.valueOf(request.getParameter("number1"));
		int number2 = Integer.valueOf(request.getParameter("number2"));
		String v = request.getParameter("v");
		
		double result = 0;
		String vv = null;
		switch(v) {
		case "plus":
			result = number1 + number2;
			vv = "+";
			break;
		case "minus":
			result = number1 - number2;
			vv = "-";
			break;
		case "multiple":
			result = number1 * number2;
			vv = "*";
			break;
		case "divide":
			result = number1 / number2;
			vv = "/";
		}
	%>
	<div class="container">
		<h1>계산 결과</h1>
		<p>
			<% 
				out.print(number1 + vv + number2 + " = " + result); 
			%>
		</p>
	</div>

</body>
</html>









