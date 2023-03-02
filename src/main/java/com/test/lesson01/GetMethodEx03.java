package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/json");
		response.setCharacterEncoding("utf-8");
		
		// 링크태그
		PrintWriter out = response.getWriter();
//		out.println("응답");
		
		// 쿼리스트링에 들어있는 파라미터 꺼내기
		// 아이디를 넘깁니다.
		String userId = request.getParameter("user_id");
//		out.println("user_id:" + userId);
		
		// 아이디와 이름을 넘깁니다.
		String name = request.getParameter("name");
//		out.println("name:" + name);
		
		// 아이디와 이름과 나이를 넘깁니다.
		// age가 없으면 null, int로 바꾸는대신 age값이 없으면 에러가남
		int age = Integer.valueOf(request.getParameter("age"));
//		out.println("age:" + age);
		
		
		// json => goolge에 확장프로그램, json두번째꺼 설치하기!
		// {"키":"값", "키1":"값1"} => JSON String
		// {"user_id":"qkrguswls", "name":"박현진", "age":30}
		out.print("{\"user_id\":\"" + userId + "\", "
				+ "\"name\":\"" + name + "\", "
						+ "\"age\":" + age + "}");
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
