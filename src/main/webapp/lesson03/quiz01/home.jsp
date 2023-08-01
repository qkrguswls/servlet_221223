<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<table class="table text-center">
	<thead></thead>
	<tbody>
		<%
		String category = request.getParameter("category");
		
		for (Map<String, String> item: list) {
			if (category == null || item.get("category").equals(category)) {
		
		%>
		<tr>
			<td><%=item.get("ch") %></td>
		</tr>
		<%
			}
		}
		%>
	</tbody>
</table>




















