package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.valueOf(request.getParameter("price"));
		
		out.print("<html><head><title>주문하기</title></head><body>");
		if (address.contains("서울시") == false) {
			out.print("배달 불가 지역입니다.");
			return;
		}
		if (card.contains("신한카드") == true) {
			// String비교는 equals .. card.equals("신한카드")로 해도됨
			out.print("결제 불가 카드입니다.");
			return;
		}
		// if(서울시) else if(신한카드) else(배달준비중) 로 해줘도됨
		out.print(address + " <b>배달 준비중</b><br>결제금액: " + price);
		out.print("</body></html>");
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
