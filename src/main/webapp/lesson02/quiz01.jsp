<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 요소</title>
</head>
<body>
	<%-- 1. jsp의 선언문 <%! %> 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요. --%>
	<%!
		public int getSum(int n) {
			int sum = 0;
			for (int i = 1; i <= n; i++) {
				sum += i;
			}
			return sum;
		}
	%>
	<h1>1부터 50까지의 합은 <%= getSum(50) %> 입니다.</h1>
	
	<%-- 2. 스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요. --%>
	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for (int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		double avg = (double)sum / scores.length;
	%>
	<h1>평균 점수는 <%= avg %>입니다.</h1>
	
	<%-- 3. 아래 채점표로 시험점수가 몇점인지 구하세요. --%>
	<%-- 임포트가 필요한곳 뒤에 커서를 두고 ctrl space바 누르면 됨(아니면 위에 저렇게 써주기!) --%>
	<%
		List<String> scoreList = Arrays.asList
		(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		int score = 0;
		for (int i = 0; i < scoreList.size(); i++) {
			if (scoreList.get(i).equals("O")) {
				score += 100 / scoreList.size();
			}
		}
	%>
	<h1>채점 결과는 <%= score %>점입니다.</h1>
	
	<%-- 4. 주어진 생년월일을 가진 사람의 나이를 구하세요. --%>
	<%
		String birthDay = "20010820";
		String yearStr = birthDay.substring(0, 4);
		// out.println(yearStr);
		int age = 2023 - Integer.valueOf(yearStr) + 1;
	%>
	<h1><%= birthDay %>의 나이는 <%= age %>세입니다.</h1>
</body>
</html>










