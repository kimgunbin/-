package com.smhrd.controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;
public class test_JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청데이터 인코딩
				request.setCharacterEncoding("UTF-8");
				
				//요청데이터(파라미터) 받기
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				String nick = request.getParameter("nick");
				String name = request.getParameter("name");
				String phone = request.getParameter("phone");
				String account = request.getParameter("account");
				String jumin = request.getParameter("jumin");
				System.out.println("여기1");
				char type = 'a';
				double temper=36.5;
				String area="earth"; 
				System.out.println("test_JoincCon,id >> "+id);
			Timestamp joindate= new Timestamp(System.currentTimeMillis());
				Member vo = new Member(id,pw,nick,name,phone,account,jumin,joindate,type,temper,area);
				System.out.println("여기2");
				
				MemberDAO dao = new MemberDAO();
				int cnt =  dao.insertMember(vo);
				System.out.println("test_JoincCon,cnt >> "+cnt);
				
				if(cnt>0) {
					System.out.println("회원가입 성공");
					// 포워딩 방식 joinSuccess.jsp이동, email->request영역에 저장
					RequestDispatcher rd = request.getRequestDispatcher("test_main.jsp");
					request.setAttribute("id", vo.getId());
					rd.forward(request, response);
					
					// 다른방법: 리다이렉팅, 쿼리스트링
					//response.sendRedirect("main.jsp?email=email");
				
				}else {
					System.out.println("회원가입 실패");
					// 포워딩 방식 joinSuccess.jsp이동, email->request영역에 저장
					response.sendRedirect("test_main.jsp");
				}
	}

}
