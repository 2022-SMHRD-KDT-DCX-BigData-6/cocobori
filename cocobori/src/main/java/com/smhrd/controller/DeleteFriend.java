package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.CocoFriendDAO;
import com.smhrd.model.CocoFriendDTO;

public class DeleteFriend implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		CocoFriendDTO member = (CocoFriendDTO)session.getAttribute("member");
		
		String user_email = member.getUser_email();
		String friend_email = request.getParameter("friend_email");
		
		CocoFriendDTO dto = new CocoFriendDTO(null, user_email, friend_email, null);
		CocoFriendDAO dao = new CocoFriendDAO();
		
		dao.deleteFriend(dto);
		
		return null;
	}

}
