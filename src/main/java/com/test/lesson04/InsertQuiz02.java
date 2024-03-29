package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class InsertQuiz02 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// request parameters
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// DB연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// insert DB
		String insertQuery = "insert into `favorite` (`name`, `url`)"
				+ "values ('" + name + "', '" + url + "')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB연결해제
		ms.disconnect();
		
		// 즐겨찾기 목록페이지로 리다이렉트
		response.sendRedirect("/lesson04/quiz02.jsp"); //위로던지기
		
	}
	
}















