<!doctype html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<title>공유에 대한 모든것! 1/n</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="favicon.ico">

<!--Google Font link-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Raleway:400,600,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">


<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/slick-theme.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/fonticons.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/bootsnav.css">


<link rel="stylesheet" href="assets/css/style.css">

<link rel="stylesheet" href="assets/css/responsive.css" />

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>

<body data-spy="scroll" data-target=".navbar-collapse">


	<!-- Preloader -->
	<!-- <div id="loading">
		<div id="loading-center">
			<div id="loading-center-absolute">
				<div class="object" id="object_one"></div>
				<div class="object" id="object_two"></div>
				<div class="object" id="object_three"></div>
				<div class="object" id="object_four"></div>
			</div>
		</div>
	</div> -->
	<!--End off Preloader -->


	<div class="culmn">
		<!--Home page style-->



		<nav
			class="navbar navbar-light navbar-expand-lg  navbar-fixed white no-background bootsnav">
			<!-- Start Top Search -->
			<div class="top-search">
				<div class="container">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-search"></i></span>
						<input type="text" class="form-control" placeholder="Search">
						<span class="input-group-addon close-search"><i
							class="fa fa-times"></i></span>
					</div>
				</div>
			</div>
			<!-- End Top Search -->

			<div class="container">
				<!-- Start Atribute Navigation -->
				
				<!-- End Atribute Navigation -->

				<!-- Start Header Navigation -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggler" data-toggle="collapse"
						data-target="#navbar-menu">
						<span></span> <span></span> <span></span>
					</button>

					<a class="navbar-brand" href="#brand"> <img
						src="assets/images/logo.png" class="logo logo-display m-top-10"
						alt=""> <img src="assets/images/logo.jpg"
						class="logo logo-scrolled" alt="">

					</a>
				</div>
				<!-- End Header Navigation -->

				<!-- <!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right" data-in="fadeInDown"
						data-out="fadeOutUp">
						<li><a href="#hello">홈화면</a></li>
						<li><a href="#login">로그인</a></li>
						<li><a href="#join">회원가입</a></li>
						<li><a href="#contact">문의하기</a></li>
					</ul>
				</div> -->
				<!-- /.navbar-collapse -->
			</div>


			<!-- Start Side Menu -->
			<div class="side">
				<a href="#" class="close-side"><i class="fa fa-times"></i></a>
				<div class="widget">
					<h6 class="title">Custom Pages</h6>
					<ul class="link">
						<li><a href="#">About</a></li>
						<li><a href="#">Services</a></li>
						<li><a href="#">Blog</a></li>
						<li><a href="#">Portfolio</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</div>
				<div class="widget">
					<h6 class="title">Additional Links</h6>
					<ul class="link">
						<li><a href="#">Retina Homepage</a></li>
						<li><a href="#">New Page Examples</a></li>
						<li><a href="#">Parallax Sections</a></li>
						<li><a href="#">Shortcode Central</a></li>
						<li><a href="#">Ultimate Font Collection</a></li>
					</ul>
				</div>
			</div>
			<!-- End Side Menu -->

		</nav>

		<!--Home Sections-->
		<section id="hello" class="home bg-mega">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="main_home">
						<div class="home_text">
							<h1 class="text-white">
								1/n 😀 분의1 <br /> 공유 중계 서비스
							</h1>
						</div>

						<div class="home_btns m-top-40">
							<a href="boardCategory.jsp" target="_blank" class="btn btn-primary m-top-20">게시판이동</a>
							<a href="payState.jsp" target="_blank" class="btn btn-primary m-top-20">결제상태</a>
							<a href="myPage.jsp" target="_blank" class="btn btn-primary m-top-20">마이페이지</a>
						</div>

					</div>
				</div>
				<!--End off row-->
			</div>
			<!--End off container -->
		</section>
		<!--End off Home Sections-->


		<!--About Sections-->
		<section id="login" class="about roomy-100">
			<div class="container">
				<div class="row">
					<div class="main_about">
						<div class="col-md-6">
							<div class="about_content">
								<h2>로그인</h2>
								<div class="separator_left"></div>
								<p>회원이 아니시면 회원가입부터 해주세요</p>
								<form action="test_loginCon" method="post" id="loginform">
									<input type="text" class="fadeIn second" name="id"
										placeholder="id" style="margin-top: 30px"> <input
										type="password" class="fadeIn third" name="pw"
										placeholder="password">
									<p id="check"></p>
									<input type="submit" class="btn btn-primary" value="Log In">
								</form>

							</div>
						</div>

				

						<div class="col-md-6">
							<div class="about_accordion wow fadeIn">

								<h6>
									<i class="fa fa-angle-right"></i> 하고싶은말1제목
								</h6>
								<div>
									<div class="content">
										<p>하고싶은말1내용하고싶은말1내용하고싶은말1내용하고싶은말1내용</p>
										
			<c:choose>
				<c:when test="${empty loginMember}">
					<h1>로그인해주세용</h1>
				</c:when>
				<c:otherwise>
					<h1>${loginMember.id}님<h1>
				</c:otherwise>
			</c:choose>
										
									</div>
								</div>
								<!-- End off accordion item-4 -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--End off row-->
	<!--End off container -->
	<br />
	<br />
	<br />
	<br />
	<hr />
	<br />
	<br /><!--End off container -->
		</section>
		<!--End off About section -->


		<!--Service Section-->
	<section id="join" class="service">
		<div class="container">
			<div class="row">
				<div class="main_service roomy-100">
					<h2>회원가입</h2>
					<div class="separator_left"></div>
					<form action="test_JoinCon" method="post">
						<li>ID: <input type="text" id="inputE"
							placeholder="id를 입력하세요" name="id"> <input
							type="button" value="email중복체크" onclick="checkE()"><span id="resultCheck"></span></li>
						<li>PW: <input type="password" placeholder="PW를 입력하세요" name="pw"></li>
						<li>닉네임: <input type="text" placeholder="닉네임을 입력하세요" name="nick"></li>
						<li>이름: <input type="text" placeholder="이름을 입력하세요" name="name"></li>
						<li>전화번호: <input type="text" placeholder="전화번호를 입력하세요" name="phone"></li>
						<li>계좌번호: <input type="text" placeholder="계좌번호를 입력하세요" name="account"></li>
						<li>주민번호: <input type="text" placeholder="주민번호를 입력하세요" name="jumin"></li> 
						<input type="submit" class="btn btn-primary" value="JoinUs" class="button fit">
					</form>
					<script>
								function checkE() {
									var inputE = $('#inputE').val()
									//console.log("main : "+inputE) //반응함
									//비동기통신 . 객체를 파라미터로
									$.ajax({
										//요청경로
										url:'test_idCheckCon', //문자열로매핑되어있는서블릿
										//요청데이터 { 키 :실제값 }
										data:{'inputE':inputE},
										//요청 방식
										type:'get',
										//요청-응답 성공시
										success :function(data){ //서버쪽에서 보내준 값을 data변수에다 받는다
											console.log("main,체크함수>> "+data)
											if(data=='true'){ //data가 false > 사용할수없는아이디
												$('#resultCheck').text("사용할 수 없는 아이디")
											}else{
												$('#resultCheck').text("사용할 수 있는 아이디")
												
											}
										},
										error: function(){
											alert("통신실패ㅜㅜ")
										}
									})
									
								}
							</script>


					<!--End off row -->
				</div>
				<!--End off container -->
	</section>
	<!--End off Featured section-->




	<!--Portfolio Section-->
	<section id="intro">
	<div class="container">
		<div class="row">
			<br><br><br><br><br><br>
			<div class="about_bottom_content">
				<div class="col-md-4">
					<div class="about_bottom_item m-top-20">
						<div class="ab_head">
							<div class="ab_head_icon">
								<i class="icofont icofont-fire-burn"></i>
							</div>
							<h6 class="m-top-20">WE’RE CREATIVE</h6>
						</div>
						<p class="m-top-20">Lorem ipsum dolor sit amet, consectetuer
							adipiscing ealit, sed diaim nonummy nibsih euismod tincidiunt
							laorieet doloire magna diam aliquafm erat voluitpati.</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="about_bottom_item m-top-20">
						<div class="ab_head">
							<div class="ab_head_icon">
								<i class="icofont icofont-speech-comments"></i>
							</div>
							<h6 class="m-top-20">WE'RE FRIENDLY</h6>
						</div>
						<p class="m-top-20">Lorem ipsum dolor sit amet, consectetuer
							adipiscing ealit, sed diaim nonummy nibsih euismod tincidiunt
							laorieet doloire magna diam aliquafm erat voluitpati.</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="about_bottom_item m-top-20">
						<div class="ab_head">
							<div class="ab_head_icon">
								<i class="icofont icofont-heart"></i>
							</div>
							<h6 class="m-top-20">WE LOVE MINIMALISM</h6>
						</div>
						<p class="m-top-20">Lorem ipsum dolor sit amet, consectetuer
							adipiscing ealit, sed diaim nonummy nibsih euismod tincidiunt
							laorieet doloire magna diam aliquafm erat voluitpati.</p>
					</div>
				</div>
			</div>
		</div>
		<!--End off row-->
	</div>
	<br />
	<br />
	<br />
	<br />
	<hr />
	<br />
	<br />
</section>
	<!-- End off Portfolio section-->




	<!--Maps Section-->
	<div class="main_maps text-center fix">
		<div class="overlay"></div>
		<div class="maps_text">
			<h3 class="text-white" onclick="showmap()">
				FIND US ON THE MAP <i class="fa fa-angle-down"></i>
			</h3>
			<div id="map_canvas" class="mapheight"></div>
		</div>
	</div>
	<!-- End off Maps Section-->

	<!--Contact Us Section-->
	<section id="contact" class="contact bg-mega fix">
		<div class="container">
			<div class="row">
				<div class="main_contact roomy-100 text-white">
					<div class="col-md-4">
						<div class="rage_widget">
							<div class="widget_head">
								<h3 class="text-white">건빈세포팀</h3>
								<div class="separator_small"></div>
							</div>
							<p>1차프로젝트<br>
							김건빈, 박성결, 임다영, 최훈철, 김윤주</p>

							<div class="widget_socail m-top-30">
								<ul class="list-inline-item">
									<li><a href=""><i class="fa fa-facebook"></i></a></li>
									<li><a href=""><i class="fa fa-twitter"></i></a></li>
									<li><a href=""><i class="fa fa-linkedin"></i></a></li>
									<li><a href=""><i class="fa fa-vimeo"></i></a></li>
									<li><a href=""><i class="fa fa-instagram"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-8 sm-m-top-30">
						<form class="" action="MessageSend" method="post">
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<c:choose>
											<c:when test="${!empty loginMember}">
										<input id="first_name" name="sendE" type="text" placeholder="Name" 
											class="form-control" value="${loginMember.id}" readonly>
											</c:when>
											<c:otherwise>
										<input id="first_name" name="first_name" type="text" placeholder="Name" class="form-control" required="">
											</c:otherwise>
										</c:choose>
									
									</div>
								</div>

								<div class="col-sm-6">
									<div class="form-group">
										<input id="phone" name="phone" type="text" placeholder="Phone"
											class="form-control">
									</div>
								</div>

								<div class="col-sm-12">
									<div class="form-group">
										<textarea class="form-control" rows="6" placeholder="Message"></textarea>
									</div>
									<div class="form-group text-center">
										<a href="" class="btn btn-primary">SEND MESSAGE</a>
									</div>
								</div>

							</div>

						</form>
					</div>
				</div>
			</div>
			<!--End off row -->
		</div>
		<!--End off container -->
	</section>
	<!--End off Contact Section-->


	<!-- scroll up-->
	<div class="scrollup">
		<a href="#"><i class="fa fa-chevron-up"></i></a>
	</div>
	<!-- End off scroll up -->


	<footer id="footer" class="footer bg-black">
		<div class="container">
			<div class="row">
				<div class="main_footer text-center p-top-40 p-bottom-30">
					<p class="wow fadeInRight" data-wow-duration="1s">
						Made with <i class="fa fa-heart"></i> by <a target="_blank"
							href="https://bootstrapthemes.co">Bootstrap Themes</a> 2016. All
						Rights Reserved
					</p>
				</div>
			</div>
		</div>
	</footer>




	</div>

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


	<script
		src="http://maps.google.com/maps/api/js?key=AIzaSyD_tAQD36pKp9v4at5AnpGbvBUsLCOSJx8"></script>
	<script src="assets/js/gmaps.min.js"></script>

	<script>
		function showmap() {
			var mapOptions = {
				zoom: 8,
				scrollwheel: false,
				center: new google.maps.LatLng(-34.397, 150.644),
				mapTypeId: google.maps.MapTypeId.ROADMAP
			};
			var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
			$('.mapheight').css('height', '350');
			$('.maps_text h3').hide();
		}

	</script>





	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/main.js"></script>

</body>

</html>




