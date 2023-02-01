package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;

public class test_idCheckCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String inputE = request.getParameter("inputE");
		
		MemberDAO dao = new MemberDAO();
		boolean checkE = dao.idCheck(inputE);
		
		System.out.println("test_idCheckCon>> "+checkE);
		PrintWriter out = response.getWriter();
		out.print(checkE);
	}

}
