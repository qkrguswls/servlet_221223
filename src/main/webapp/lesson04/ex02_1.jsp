<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저 목록</title>
</head>
<body>
	<%
		// DB연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String selectQuery = "select * from `new_user`";
		ResultSet res = ms.select(selectQuery);
	%>
	
	<%-- 2. 유저삭제: ex02_1.jsp(유저목록) -> 삭제버튼 -> DeleteEx02 서블릿(delete DB)
	-> ex02_1.jsp(유저목록) --%>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th>자기소개</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%
			while (res.next()) {
		%>
			<tr>
				<td><%= res.getInt("id") %></td>
				<td><%= res.getString("name") %></td>
				<td><%= res.getString("yyyymmdd") %></td>
				<td><%= res.getString("email") %></td>
				<td><%= res.getString("introduce") %></td>
				<td><a href="/lesson04/delete_ex02?id=<%= res.getInt("id") %>">삭제</a></td>
			</tr>
		<%
			}
		%>
		</tbody>
	</table>
	<%
		ms.disconnect(); // DB연결해제
	%>
</body>
</html>













