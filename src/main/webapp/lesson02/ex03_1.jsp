<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST method 폼태그 - 선택한 결과</title>
</head>
<body>
	<%
		String nickname = request.getParameter("nickname");
		String hobby = request.getParameter("hobby");
		String animal = request.getParameter("animal");
		String[] foodArr = request.getParameterValues("food"); 
		//선택항목이 여러개이면 get..values로!
		String fruit = request.getParameter("fruit");
	%>
	
	<table border="1">
		<tr>
			<th>별명</th>
			<td><%= nickname %></td>
		</tr>	
		<tr>
			<th>취미</th>
			<td><%= hobby %></td>
		</tr>	
		<tr>
			<th>선호하는 동물</th>
			<td><%= animal %></td>
		</tr>	
		<tr>
			<th>선호하는 음식</th>
			<td>
				<%-- <%= foodArr %> --%>
				<%
					if (foodArr != null) { //선택을안하면 null이 나오니까
						String result = "";
						for (String food : foodArr) {
							//향상된 for문
							result += food + ",";
						}
						// 맨뒤에 붙은 콤마 제거
						result = result.substring(0, result.length() - 1);
						
						// 밖에서말고 여기서 출력직접하기
						out.print(result);
					}
				%>
			</td>
		</tr>	
		<tr>
			<th>좋아하는 과일</th>
			<td><%= fruit %></td>
		</tr>	
	</table>
	
</body>
</html>










