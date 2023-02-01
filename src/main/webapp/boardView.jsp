<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
	background-image: url('asset/img/bg.jpg');
	padding-left: 200px;
	padding-right: 200px;
	font-family: 'Do Hyeon', sans-serif;
}

.card-body {
	background-color: whitesmoke;
}

p {
	padding-top: 5px;
	padding-left: 20px;
	font-size: 30px;
}

#date{
	font-size : 20px;
	text-align : right;
}
</style>
</head>
<!-- 스크립틀릿 안쓰려고 지금 이작업 하는거임..JSP파일 안에서 변수 선언하는 태그 임. id는 변수명 -->
<!-- JSTL에서 변수를 선언하는 기능 var변수명 value값,값에다가EL표기법으로 아까 위에 선언한 변수를 넣는다 -->
<!-- param.num url에 있는 파라미터중에서 num이라는 값을 불러오겠다.. 저기서 선언한 변수는 자바변수가 아니다.EL로 불러오기가능 -->
<jsp:useBean id="BoardDAO" class="com.smhrd.model.BoardDAO"/>
<c:set var="board" value="${BoardDAO.selectOne(param.num)}"/>

<jsp:useBean id="ReplyDAO" class="com.smhrd.model.ReplyDAO"></jsp:useBean>
<c:set var="replyList" value="${ReplyDAO.selectReply(param.num)}"/>
<body>
	<form>
		<div class="card-body" style="margin-top: 100px; margin-bottom: 10px; height: 150px">
			<p>${board.name}/${board.writer}</p>
			<p id="date">작성일 : ${board.uploadday}</p>
		</div>
	
		<!-- 댓글작성 -->
		<div class="card mb-2">
			<div class="card-body">
				<img src="img/${board.filename}">
				<!-- <img src="img/${BoardDAO.selectOne(param.num).filename}"> -->
				<ul class="list-group list-group-flush">
					<li class="list-group-item"><textarea class="form-control"
							id="exampleFormControlTextarea1" rows="3"></textarea>
						<button type="button" class="btn btn-dark mt-3" onclick="addReply()">post reply</button></li>
				</ul>
				<ul class="list-group list-group-flush" id="reply">
					<!-- 여기를 작성해야 새로고침해도 그대로 남아있음 -->
					<c:forEach items="${replyList}" var = "reply">
					<li class="list-group-item"><span>${reply.content}/${reply.writer}</span></li>
						
					</c:forEach>
					
		
				</ul>
			</div>
		</div>
	
	</form>
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script>
		function addReply() {
		/* 제이쿼리 헷갈리지마 , 스크립트안에서 el표기법 가능, 표현식으로 자바변수가져오기가능 */
			let ta = $('textarea').val()
				
			$.ajax({
			//요청경로
			url: 'ReplyCon',
			//요청데이터 (게시물번호, 작성댓글)
			data: {
				'boardnum':${param.num},
				'reply':ta
			},
			//요청방식(get,post)
			type:'post',
			success:function(data){ //통신이 성공
				//alert(data) 
				$('#reply').prepend('<li class="list-group-item"><span>'+ta+'/${loginVO.id}</span></li>')
			},
			error :function(){ //통신이 실패
				alert('통신실패')
			}
			
			})
		
		
		}
	</script>	
	
</body>
</body>
</html>