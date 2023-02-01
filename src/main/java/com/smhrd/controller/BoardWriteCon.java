package com.smhrd.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.Board;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.Member;

public class BoardWriteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		//세션 - id
		HttpSession session = request.getSession();
		Member vo = (Member) session.getAttribute("loginVO");
		String id = vo.getId();
		
		//파일이 저장될 서버의 경로 지정
		String saveDir = request.getServletContext().getRealPath("img");
		//파일의 최대크기 15MB
		int maxSize = 1024*1024*15;
		//인코딩방식
		String encoding ="UTF-8";
		
		//파일, 글제목, 컨텐츠 //파일이름중복방지함수~
		MultipartRequest multi =  new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String name = multi.getParameter("name");
		String filename =  URLEncoder.encode(multi.getFilesystemName("filename"), "UTF-8");
		String content = null;
		String state = null;
		String del = "n";
		String r1 = request.getParameter("r1");
		String r2 = request.getParameter("r2");
		String r3 = request.getParameter("r3");
		String r4 = request.getParameter("r4");
		String category = null;
		if(r1!=null) {
			category = "B";
			content = multi.getParameter("r1");
			state = "진행";
			String buylink = request.getParameter("buylink");
			String buypay = request.getParameter("buypay");
			
			Board boardVO = new Board(name, id, filename, content,del,state,category,buypay,buylink);
			BoardDAO dao = new BoardDAO();
			int cnt = dao.insertBoard(boardVO);
			if(cnt>0) {
				System.out.println("작성성공");
				response.sendRedirect("boardListPaging.jsp");
			}else {
				System.out.println("작성실패");
				response.sendRedirect("boardWrite.jsp");
			}
			
			
		}
		
		Board boardVO = new Board(name, id, filename, content,del,state,category);
		BoardDAO dao = new BoardDAO();
		int cnt = dao.insertBoard(boardVO);
		if(cnt>0) {
			System.out.println("작성성공");
			response.sendRedirect("boardListPaging.jsp");
		}else {
			System.out.println("작성실패");
			response.sendRedirect("boardWrite.jsp");
		}
		
	}

}
