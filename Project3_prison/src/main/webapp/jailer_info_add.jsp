<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Specer Template">
<meta name="keywords" content="Specer, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>코도소 3차 프로젝트 | 재소자 추가</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="../resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="../resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="../resources/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet" href="../resources/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="../resources/css/style.css" type="text/css">
<!-- Js Plugins -->
<script src="../resources/js/jquery-3.3.1.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/jquery.magnific-popup.min.js"></script>
<script src="../resources/js/jquery.slicknav.js"></script>
<script src="../resources/js/owl.carousel.min.js"></script>
<script src="../resources/js/main.js"></script>
<!-- bootstrap -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="ht-info">
							<ul>
								<li>20:00 - May 19, 2019</li>
								<li><a href="#">Logout</a></li>
								<li><a href="#">Contact</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="ht-links">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-vimeo"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-google-plus"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="header__nav">
			<div class="container">
				<div class="row">
					<div class="col-lg-2">
						<div class="logo">
							<a href="./main.jsp"><img src="../resources/img/logo.png"
								alt=""></a>
						</div>
					</div>
					<div class="col-lg-10">
						<div class="nav-menu">
							<ul class="main-menu">
								<li><a href="#">Home</a></li>
								<li class="active"><a href="#">재소자</a>
									<ul class="dropdown">
										<li><a href="jailer_info.jsp">재소자 정보</a></li>
										<li><a href="#">약물 내역</a></li>
										<li><a href="#">특별 약물 내역</a></li>
									</ul></li>
								<li><a href="#">교도관</a>
									<ul class="dropdown">
										<li><a href="#">교도관 정보</a></li>
										<li><a href="#">순찰 내역</a></li>
										<li><a href="#">CCTV 관리</a></li>
									</ul></li>
								<li><a href="#">교정사고</a>
									<ul class="dropdown">
										<li><a href="#">교정사고 내역</a></li>
										<li><a href="#">이상 징후 감지 내역</a></li>
									</ul></li>
								<li><a href="./contact.html">Contact Us</a></li>
							</ul>
							<div class="nm-right search-switch">
								<i class="fa fa-search"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="canvas-open">
					<i class="fa fa-bars"></i>
				</div>
			</div>
		</div>
	</header>
	<!-- Header End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="../resources/img/hero/hero-1.jpg"
		style='background-image: url("../resources/img/hero/hero-1.jpg");'>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="bs-text">
						<h2>재소자 정보</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Club Section Begin -->
	<section class="club-section-1 spad-3">
		<div class="search-div">
			<form>
				<div class="search-jailer-div">
					<select name="search-jailer" class="search-jailer">
						<option value="이름">이름</option>
						<option value="수감번호">수감번호</option>
					</select> <input class="input-jailer" type="text" name="search"
						placeholder="Search..">
						<button type="button" class="btn btn-default btn-lg">검색</button>
						<button type="button" class="btn btn-default btn-lg">추가</button>
				</div>
			</form>
		</div>
	</section>
	<section class="club-section spad-4">
		<div class="container">
			<div class="club-content">
				<div></div>
			</div>
			<div class="club-tab-list">
				<div class="row">
					<div class="col-lg-8 m-auto">

						<!-- Tab panes -->
						<div class="container">
						
							<table class="table table-hover">
								<thead>
									<tr>
										<th>사진</th>
										<th>수감번호</th>
										<th>이름</th>
										<th>나이</th>
										<th>성별</th>
										<th>수감구역</th>
										<th>방 번호</th>
										<th>범죄 분류</th>
										<th>전과</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><img src="../resources/img/face/pang.jpg"
											width="100px" height="100px"></td>
										<td>9823</td>
										<td>정지윤</td>
										<td>24</td>
										<td>여</td>
										<td>A-1</td>
										<td>12</td>
										<td>폭행죄</td>
										<td>-</td>
									</tr>
									<tr>
										<td><img src="../resources/img/face/pang.jpg"
											width="100px" height="100px"></td>
										<td>9823</td>
										<td>정지윤</td>
										<td>24</td>
										<td>여</td>
										<td>A-1</td>
										<td>12</td>
										<td>폭행죄</td>
										<td>-</td>
									</tr>
									<tr>
										<td><img src="../resources/img/face/pang.jpg"
											width="100px" height="100px"></td>
										<td>9823</td>
										<td>정지윤</td>
										<td>24</td>
										<td>여</td>
										<td>A-1</td>
										<td>12</td>
										<td>폭행죄</td>
										<td>-</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Club Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer-section set-bg" data-setbg="img/footer-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="fs-logo">
						<div class="logo">
							<a href="./index.html"><img src="img/logo.png" alt=""></a>
						</div>
						<ul>
							<li><i class="fa fa-envelope"></i> Info.colorlib@gmail.com</li>
							<li><i class="fa fa-copy"></i> +(12) 345 6789 10</li>
							<li><i class="fa fa-thumb-tack"></i> 40 Baria Sreet 133/2
								New York City, United State</li>
						</ul>
						<div class="fs-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-tumblr"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 offset-lg-1">
					<div class="fs-widget">
						<h4>Top Club</h4>
						<ul class="fw-links">
							<li><a href="#">Brazil</a></li>
							<li><a href="#">Germany</a></li>
							<li><a href="#">Italy</a></li>
							<li><a href="#">Argentina</a></li>
							<li><a href="#">France</a></li>
						</ul>
						<ul class="fw-links">
							<li><a href="#">England</a></li>
							<li><a href="#">Netherlands</a></li>
							<li><a href="#">Hungary</a></li>
							<li><a href="#">Croatia</a></li>
							<li><a href="#">Poland</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="fs-widget">
						<h4>Recent News</h4>

						<div class="fw-item">
							<h5>
								<a href="#">England win shows they have the spark to go far
									at World Cup</a>
							</h5>
							<ul>
								<li><i class="fa fa-calendar"></i> May 19, 2019</li>
								<li><i class="fa fa-edit"></i> 3 Comment</li>
							</ul>
						</div>
						<div class="fw-item">
							<h5>
								<a href="#">Sri Lanka v Australia: Cricket World Cup 2019 –
									live!</a>
							</h5>
							<ul>
								<li><i class="fa fa-calendar"></i> May 19, 2019</li>
								<li><i class="fa fa-edit"></i> 3 Comment</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="copyright-option">
				<div class="row">
					<div class="col-lg-12">
						<div class="co-text">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
						<div class="co-widget">
							<ul>
								<li><a href="#">Copyright notification</a></li>
								<li><a href="#">Terms of Use</a></li>
								<li><a href="#">Privacy Policy</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Search model Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">
				<i class="fa fa-close"></i>
			</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

</body>

</html>