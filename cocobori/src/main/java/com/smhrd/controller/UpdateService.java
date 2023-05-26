package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	HttpSession session = request.getSession();
	session.getAttribute("");
		
	// 회원정보 수정 사항 : 비밀번호, 닉네임, 폰번호, 펫
	String user_pw = request.getParameter("user_pw");
	String user_nick = request.getParameter("user_nick");
	String user_phone = request.getParameter("user_phone");
	String user_pet = request.getParameter("user_pet");
	
	}

}
