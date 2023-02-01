<%@page import="com.smhrd.model.Board"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">
<style>
body {
	background-image: url('./asset/img/bg.jpg');
	font-family: 'Do Hyeon', sans-serif;
	font-size: 30px;
}

.container {
	background-color: whitesmoke;
	margin-top: 100px;
	padding-top: 20px;
}

#writeBtn {
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<%
	/* 	이거 아닌가..ㅠㅠ Con에서 하는거구낭..
		request.setCharacterEncoding("UTF-8");
	 */

	BoardDAO dao = new BoardDAO();
	List<Board> list = dao.selectAllList();
	%>

	<div class="container">
		<a href="boardWrite.jsp"><button id="writeBtn">글작성</button></a>
		<table class="table">
			<tr>
				<th>글 제목</th>
				<th>작성자</th>
				<th>조회수</th>
			</tr>

			<%
			for (Board b : list) {
			%>
			<tr>
				<td><a href="boardView.jsp?num=<%=b.getNum()%>"><%=b.getName()%></a></td>
				<td><%=b.getWriter()%></td>
				<td><%=b.getViews()%></td>
			</tr>
			<%
			}
			%>



		</table>















	</div>
</body>
</html>