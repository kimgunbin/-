package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.smhrd.model.Board;
import com.smhrd.model.BoardDAO;

public class boardPagingCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int num = Integer.parseInt(request.getParameter("num"));
		BoardDAO dao = new BoardDAO();
		List<Board> list =  dao.selectAllListPage(num);
		
		/* 자바객체를 json형태로 바꿔주는 라이브러리 사용 */
		JsonObject json = new JsonObject(); //json객체
		JsonArray jarray = new JsonArray(); //json Array
	
		for(Board b: list) {
			json.addProperty("num",b.getNum());
			json.addProperty("name", b.getName());
			json.addProperty("writer", b.getWriter());
			json.addProperty("views", b.getViews());
			
			jarray.add(json);
			json =new JsonObject();
		}
		
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(jarray);
	
	
	}

}
