<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
    
<!doctype html>
<html class="no-js" lang="en">
<head>
	<meta charset="utf-8">
	<title>Rage Freebie HTML5 Landing page</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="favicon.ico">

	<!--Google Font link-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">


	<link rel="stylesheet" href="assets/css/slick.css">
	<link rel="stylesheet" href="assets/css/slick-theme.css">
	<link rel="stylesheet" href="assets/css/animate.css">
	<link rel="stylesheet" href="assets/css/fonticons.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/bootstrap.css">
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<link rel="stylesheet" href="assets/css/bootsnav.css">


	<!--For Plugins external css-->
	<!--<link rel="stylesheet" href="assets/css/plugins.css" />-->

	<!--Theme custom css -->
	<link rel="stylesheet" href="assets/css/style.css">
	<!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

	<!--Theme Responsive css-->
	<link rel="stylesheet" href="assets/css/responsive.css" />

	<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	<!-- JS includes -->
	
	<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="assets/js/vendor/popper.min.js"></script>
	<script src="assets/js/vendor/bootstrap.min.js"></script>
	<script src="assets/js/jquery.magnific-popup.js"></script>
	<script src="assets/js/jquery.easing.1.3.js"></script>
	<script src="assets/js/slick.min.js"></script>
	<script src="assets/js/jquery.collapse.js"></script>
	<script src="assets/js/bootsnav.js"></script>
	
	
	<!-- paradise slider js -->
	
	
	<script src="http://maps.google.com/maps/api/js?key=AIzaSyD_tAQD36pKp9v4at5AnpGbvBUsLCOSJx8"></script>
	<script src="assets/js/gmaps.min.js"></script>
	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/main.js"></script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
	<div class="culmn">
		<!--Skill Sections-->
		<section id="skill" class="skill roomy-100">
			<div class="container">
				<div class="row">
					<div class="main_skill">
						<div class="col-md-6">
							<div class="skill_content wow fadeIn">
								<h2>등록한 게시글</h2>
								<div class="separator_left"></div>
								<p>
								 최종확정을 기다리는 게시글1
								<button type="button" name="거래결정"
								class="" onclick="location.href='paymentAPI.jsp'">버튼</button><br>
									onclick="location.href='index.html'"
									거래결정
								 1.1자 거래상태는 공백 상태로 올리기
									>>건빈이 게시판패VO,DAO 사용해서 메소드만들기
								2.2자가 채팅으로 참여버튼 누르기
									>>일단 채팅방의 결제내용은 웹으로 구현가정
								3.1자가 인원수 확정후 금액 브로커에게 보내기 (계좌이체 API)/돈 받음완료 상태변경하기
								4.브로커는 계산해서 2자에게 금액알리기/
								5.2자는 진행상태를 취소(언제까지?)할 수 있는 UI구성
								6.1자는 거래완료후 브로커에 알리기 > 거래정보 공유하기
								7.2자는 거래완료 버튼 누르기
								8.1자에게 거래금액 돌려주기(계좌이체 API)
								
								등록한 게시글조회보기 + 진행상태(진행 완료 취소 공백)
								
								(참여버튼 눌러서 확인가능)참여한 게시글조회보기 + 진행상태(거리상태의 진행 완료 취소 공백)
								1.1자 거래상태는 공백 상태로 올리기
								2.2자가 채팅으로 참여버튼 누르기
								3.1자가 인원수 확정후 금액 브로커에게 보내기 (계좌이체 API)/돈 받음완료 상태변경하기
								4.브로커는 계산해서 2자에게 금액알리기/
								5.2자는 진행상태를 취소(언제까지?)할 수 있는 UI구성
								6.1자는 거래완료후 브로커에 알리기 > 거래정보 공유하기
								7.2자는 거래완료 버튼 누르기
								8.1자에게 거래금액 돌려주기(계좌이체 API)
								
								등록한 게시글조회보기 + 진행상태(진행 완료 취소 공백)
								
								(참여버튼 눌러서 확인가능)참여한 게시글조회보기 + 진행상태(거리상태의 진행 완료 취소 공백)
								</p>
							</div>
						</div>
						<div class="col-md-6">
							<div class="skill_content wow fadeIn">
								<h2>참여한 게시글</h2>
								<div class="separator_left"></div>
						
								<p>
									'참여확정'을 한 게시글만 올라온다
									
								</p>
						
							</div>
						</div>
					</div>
				</div>
				<!--End off row-->
			</div>
			<!--End off container -->
			<br />
			<br />
			<br />
			<hr />
			<br />
			<br />
			<br />
			<div class="container">
				<div class="row">
					<div class="skill_bottom_content text-center">
						<div class="col-md-3">
							<div class="skill_bottom_item">
								<h2 class="statistic-counter">3468</h2>
								<div class="separator_small"></div>
								<h5><em>나의 게시글 수</em></h5>
							</div>
						</div>
						<div class="col-md-3">
							<div class="skill_bottom_item">
								<h2 class="statistic-counter">4638</h2>
								<div class="separator_small"></div>
								<h5><em>나의 참여한 수</em></h5>
							</div>
						</div>
						<div class="col-md-3">
							<div class="skill_bottom_item">
								<h2 class="statistic-counter">3468</h2>
								<div class="separator_small"></div>
								<h5><em>거래횟수</em></h5>
							</div>
						</div>
						<div class="col-md-3">
							<div class="skill_bottom_item">
								<h2 class="statistic-counter">3468</h2>
								<div class="separator_small"></div>
								<h5><em>회원온도</em></h5>
							</div>
						</div>
					</div>
				</div>
				<!--End off row-->
			</div>
			<!--End off container -->
		</section>
		<!--End off Skill section -->
	</div>

	

</body>

</html>
    