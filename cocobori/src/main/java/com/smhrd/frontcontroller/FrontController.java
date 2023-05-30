package com.smhrd.frontcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.controller.DeleteFriend;
import com.smhrd.controller.InsertFriend;

public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("FrontController 호출");
		
		request.setCharacterEncoding("UTF-8");
		
		// 요청 주소
		String reqURI = request.getRequestURI();
		System.out.println("요청 주소 : " + reqURI);
		
		// 콘텍스트 경로
		String contextPath = request.getContextPath();
		System.out.println("콘텍스트 경로" + contextPath);
		
		// 최종 URI
		String rsltURI = reqURI.substring(contextPath.length()+1);
		System.out.println("최종 URI : " + rsltURI);
		
		String moveURL = null;
		Command service = null;
		
// 친구 추가
		if (rsltURI.equals("InsertFriend.do")) {
			service = new InsertFriend();
// 친구 삭제
		} else if (rsltURI.equals("DeleteFriend.do")) {
			service = new DeleteFriend();
		} 
		
		moveURL = service.execute(request, response);
		response.sendRedirect(moveURL);
	}

}
