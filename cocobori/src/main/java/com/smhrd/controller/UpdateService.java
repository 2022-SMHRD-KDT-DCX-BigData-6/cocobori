package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.CocoMemberDAO;
import com.smhrd.model.CocoMemberDTO;


public class UpdateService extends HttpServlet {

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	request.setCharacterEncoding("UTF-8");	
		
	HttpSession session = request.getSession();
	CocoMemberDTO member = (CocoMemberDTO)session.getAttribute("Member");
		
	String user_email = member.getUser_email();
	String user_pw = request.getParameter("user_pw");
	String user_nick = request.getParameter("user_nick");
	String user_phone = request.getParameter("user_phone");
	String user_pet = request.getParameter("user_pet");
	

	CocoMemberDTO dto = new CocoMemberDTO(user_email, user_pw, user_nick, user_phone, user_pet);
	CocoMemberDAO dao = new CocoMemberDAO();
	
	int cnt = dao.updateMember(dto);
	
	if(cnt > 0) {
		System.out.println("회원정보수정 성공!");
		session.setAttribute("member", dto);
		response.sendRedirect("index.jsp");
	}else {
		System.out.println("회원정보수정 실패...");
		response.sendRedirect("update.jsp");
	}
	
	
	}

}
