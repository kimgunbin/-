package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Member;
import com.smhrd.model.Reply;
import com.smhrd.model.ReplyDAO;

public class ReplyCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
		
		String boardnum = request.getParameter("boardnum");
		BigDecimal numBD = new BigDecimal(boardnum);// String to BigDecimal
		
		String reply = request.getParameter("reply");
		
		HttpSession session = request.getSession();
		Member vo =(Member)session.getAttribute("loginVO");
		String writer =vo.getId();
		
		Reply rvo = new Reply(numBD,reply,writer);
		ReplyDAO dao = new ReplyDAO();
		int cnt = dao.insertReply(rvo);

		response.setCharacterEncoding("UTF-8"); //응답데이터인코딩
		PrintWriter out = response.getWriter(); //서버와 클라이언트 연결해주는통로
	
		if(cnt>0) { //댓글작성 성공
			out.print("success");
		}else { //댓글작성실패 동기방식: 다른페이지로 이동/비동기통신: 원래페이지의 일부분만 변경
			out.print("fail");
		}
	
	
	}

}
