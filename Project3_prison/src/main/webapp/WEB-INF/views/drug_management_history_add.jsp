<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Specer Template">
<meta name="keywords" content="Specer, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>코도소 3차 프로젝트 | 약물 내역 추가</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"
	type="text/css">
<!-- Js Plugins -->
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<!-- bootstrap -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function logoutFn() {
		$.ajax({
			url : "${cpath}/logoutajax.do",
			type : "get",
			success : function() {
				location.href = "main.do";
			},
			error : function() {
				alert("error");
			}
		});
	}

	function printTime() {
		var clock = document.getElementById("clock");
		var now = new Date();

		clock.innerHTML = now.getFullYear() + "-" + (now.getMonth() + 1) + "-"
				+ now.getDate() + "   " + now.getHours() + ":"
				+ now.getMinutes() + ":" + now.getSeconds();

		setTimeout("printTime()", 1000);
	}

	window.onload = function() {
		printTime();
	};
</script>
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
								<li>
									<div id="clock"></div>
								</li>
								<c:if test="${sessionScope.prisonOfficerVO==null}">
									<li><a href="login.do">Sign in</a></li>
								</c:if>
								<c:if test="${sessionScope.prisonOfficerVO!=null}">
									<li><a>${sessionScope.prisonOfficerVO.name}님 방문을
											환영합니다.</a></li>
									<li><a onclick="logoutFn()"> 로그아웃</a></li>
								</c:if>

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
							<a href="./main.do"><img
								src="${pageContext.request.contextPath}/resources/img/logo.png"
								alt=""></a>
						</div>
					</div>
					<div class="col-lg-10">
						<div class="nav-menu">
							<ul class="main-menu">
								<li><a href="main.do">Home</a></li>
								<li class="active"><a href="#">재소자</a>
									<ul class="dropdown">
										<li><a href="prisoner_info.do">재소자 정보</a></li>
										<li><a href="drug_management_history.do">약물 내역</a></li>
										<li><a href="spec_drug_history.do">특별 약물 내역</a></li>
									</ul></li>
								<li><a href="#">교도관</a>
									<ul class="dropdown">
										<li><a href="prison_officer_info.do">교도관 정보</a></li>
										<li><a href="patrol_history.do">순찰 내역</a></li>
									</ul></li>
								<li><a href="#">교정사고</a>
									<ul class="dropdown">
										<li><a href="corrective_history.do">교정사고 내역</a></li>
										<li><a href="anomaly_detection_history.do">이상 징후 감지
												내역</a></li>
									</ul></li>
								<li><a href="#">CCTV</a>
									<ul class="dropdown">
										<li><a href="cctv.do">CCTV 관리</a></li>
										<li><a href="cctv_now.do">실시간 CCTV</a></li>
									</ul></li>
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
		data-setbg="${pageContext.request.contextPath}/resources/img/hero/hero-1.jpg"
		style='background-image: url("${pageContext.request.contextPath}/resources/img/hero/hero-1.jpg");'>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="bs-text">
						<h2>약물 내역 추가</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->


	<section class="club-section spad-4">
		<form method="post"
			action="${cpath}/drug_management_history_insert.do">
			<div class="form">
				<div class="input_field">
					<label>수감번호</label> <input type="text" id="prisoner_prison_number"
						class="input" name="prisoner_prison_number">
				</div>
				<div class="input_field">
					<label>약물종류</label> <input type="text" id="drug_type" class="input"
						name="drug_type">
				</div>
				<div class="input_field">
					<label>복용 횟수</label> <input type="text" id="taking_count"
						class="input" name="taking_count">
				</div>
				<div class="input_field">
					<label>특별 약물 여부</label> <input type="checkbox" id="spec_drug"
						name="spec_drug" class="input">
				</div>
				<div class="page-btn">
					<button type="submit" class="btn btn-default btn-lg">추가</button>
				</div>
			</div>
		</form>
	</section>
	<!-- Club Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer-section set-bg"
		data-setbg="${pageContext.request.contextPath}/resources/img/footer-bg.jpg"
		style='background-image: url("${pageContext.request.contextPath}/resources/img/footer-bg.jpg");'>
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="fs-logo">
						<div class="logo">
							<a href="./index.html"><img
								src="${pageContext.request.contextPath}/resources/img/logo.png"
								alt=""></a>
						</div>
						<ul>
							<li><i class="fa fa-envelope"></i> 2_3jy@naver.com</li>
							<li><i class="fa fa-copy"></i> +(82) 010 7140 174</li>
							<li><i class="fa fa-thumb-tack"></i> 광주광역시 동구 대의동 10-1</li>
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
						<h4>Top Prison officer</h4>
						<ul class="fw-links">
							<li><a href="#">장영우</a></li>
							<li><a href="#">김남진</a></li>
							<li><a href="#">박주현</a></li>
							<li><a href="#">정지윤</a></li>
							<li><a href="#">주익정</a></li>
						</ul>
						<ul class="fw-links">
							<li><a href="#">김은혜</a></li>
							<li><a href="#">노현규</a></li>
							<li><a href="#">남수환</a></li>
							<li><a href="#">최현영</a></li>
							<li><a href="#">최성우</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="fs-widget">
						<h4>Recent News</h4>

						<div class="fw-item">
							<h5>
								<a href="#">빅데이터 4차반 종강 코앞에 두고 학생 25명<br>전원 탈주해 ...
								</a>
							</h5>
							<ul>
								<li><i class="fa fa-calendar"></i> August 17, 2021</li>
								<li><i class="fa fa-edit"></i> 25 Comment</li>
							</ul>
						</div>
						<div class="fw-item">
							<h5>
								<a href="#">빅데이터 4차반 담임 최성우, 3년의 열애 끝에<br> 결혼 발표
								</a>
							</h5>
							<ul>
								<li><i class="fa fa-calendar"></i> August 19, 2021</li>
								<li><i class="fa fa-edit"></i> 312 Comment</li>
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
				<input type="text" id="search-input" placeholder="Search here...">
			</form>
		</div>
	</div>
	<!-- Search model end -->

</body>

</html>