package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_delete")
public class DeleteQuiz02 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// a태그로 넘어오면 get방식
		
		// request parameters
		int id = Integer.valueOf(request.getParameter("id"));
		
		// DB연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// delete query수행
		String deleteQuery = "delete from `favorite` where `id`=" + id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB연결해제
		ms.disconnect();
		
		// 목록화면으로 리다이렉트(이동)
		response.sendRedirect("/lesson04/quiz02.jsp");
		
	}
	
}
















