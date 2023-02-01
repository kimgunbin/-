package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Message;
import com.smhrd.model.MessageDAO;

public class MessageSend extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String sendE =request.getParameter("sendE");
		String messageE =request.getParameter("messageE");
		String receiveE =request.getParameter("receiveE");
	
		Message vo = new Message(sendE, messageE, receiveE);
		
		MessageDAO dao = new MessageDAO();
		int cnt= dao.insertMessage(vo);
		if(cnt>0) {//메세지 전송 성공
			System.out.println("메세지 전송 성공");
		}else {//메세지 전송 실패
			System.out.println("메세지 전송 실패");
		}
		response.sendRedirect("main.jsp");
	}

}
