<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" isELIgnored="false"%>
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
input[type=text]{
	width : 100%;
	height : 100%;
	font-size: 30px;
}
.mytest{
	displya: 'none'

}

</style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


</head>
<body>
	<form action="BoardWriteCon" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
		<div class="card-body" style="margin-top: 100px; margin-bottom: 10px; height: 50px">
			<input type="text" placeholder="�Խù� ���� �ۼ�" name="name">
		</div>
	
		<!-- �Խù� �ۼ� -->
		<div class="card mb-2" style="width : 100%;">
			<div class="card-body">
				<input name="filename" type="file">
				<!-- <select name="blood" id="">
                        <option value="buy" onclick="cat1()">���Ű���</option>
                        <option value="account">��������</option>
                        <option value="arbeit">�Ƹ�����Ʈ��Ÿ</option>
                    </select> -->
                    
                    
				<div class="mytest">		
				<div style="width:200px;">
				  <input type="radio" name="radio" id="r1" value="1" checked><label for="r1">����</label>
				  <input type="radio" name="radio" id="r2" value="2"><label for="r2">��������</label>
				  <input type="radio" name="radio" id="r3" value="3"><label for="r3">�˹ٴ���</label>
				  <input type="radio" name="radio" id="r4" value="4"><label for="r4">����</label>
				</div>
				
				<div class="buyForm" style="width:200px; display:none;">
				 ���Ÿ�ũ <input  type="text" name="text" id="buylink" >
				 ���Ű��� <input type="text" name="text" id="buypay" >
				</div>
				
				<div class="accountingForm" style="width:200px; display:none;">
				 ������ũ <input type="text" name="text" id="idlink" >
				 �̿�Ⱓ <input type="text" name="text" id="idtime" >
				 ���Ű��� <input type="text" name="text" id="idpay" >
				</div>
				
				<div class="albeitForm" style="width:200px;  display:none;">
				 �˹ٽð� <input type="text" name="text" id="arbeittime" >
				 �˹���� <input type="text" name="text" id="arbeitsite" >
				 �˹ٽñ� <input type="text" name="text" id="arbeitpay" >
				</div>
				</div>
				<script>
				$(document).ready(function(){
					 
				    // ������ư Ŭ���� �̺�Ʈ �߻�
				    $("input:radio[name=radio]").click(function(){
				 
				        if($("input[name=radio]:checked").val() == "1"){
				        	$(".buyForm").css('display', 'block')
				        	$(".accountingForm").css('display', 'none')
				        	$(".albeitForm").css('display', 'none')
				        	
				        }else if($("input[name=radio]:checked").val() == "2"){
				        	$(".buyForm").css('display', 'none')
				        	$(".accountingForm").css('display', 'block')
				        	$(".albeitForm").css('display', 'none')
				        }else if($("input[name=radio]:checked").val() == "3"){
				        	$(".buyForm").css('display', 'none')
				        	$(".accountingForm").css('display', 'none')
				        	$(".albeitForm").css('display', 'block')
				        }else{
				        	
				        }
				    });
				});

				
				</script>
				
				
						
						
				
				
				<textarea name="content" rows="10" style="width : 100%;"></textarea>	
				<input type="submit" value="�Խù��ۼ�">
			</div>
		</div>
	</form>
	
</body>
</body>
</html>