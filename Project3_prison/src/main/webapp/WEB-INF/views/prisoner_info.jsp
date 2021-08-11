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
<title>코도소 3차 프로젝트 | 재소자 정보</title>

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

<script type="text/javascript">
	
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
											<li><a href="cctv.do">CCTV 관리</a></li>
										</ul></li>
									<li><a href="#">교정사고</a>
										<ul class="dropdown">
											<li><a href="corrective_history.do">교정사고 내역</a></li>
											<li><a href="anomaly_detection_history.do">이상 징후 감지
													내역</a></li>
										</ul></li>
									<li><a href="#">Contact Us</a></li>
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
						<h2>재소자 정보</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Club Section Begin -->
	<div id="list1" style="display: block;">
		<section class="club-section-1 spad-3">
			<div class="search-div">
				<form action="${cpath}/prisoner_info_search.do" method="post">
					<div class="search-jailer-div">
						<select name="part" class="search-jailer">
							<option value="name">이름</option>
							<option value="prison_number">수감번호</option>
						</select> <input class="input-jailer" type="text" name="keyword"
							placeholder="Search${cpath}">
						<button class="btn btn-default btn-lg">검색</button>
						<a href="prisoner_info_add.do"><button type="button"
								class="btn btn-default btn-lg">추가</button></a>
					</div>
				</form>
			</div>
		</section>
	</div>
	<section class="club-section spad-4">
		<div class="container">
			<div class="club-content">
				<div></div>
			</div>
			<div class="club-tab-list">
				<div class="row">
					<div class="col-lg-8 m-auto">

						<!-- Tab panes -->
						<div id="list" class="container" style="display: block;">

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
										<th>삭제</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="vo" items="${list}">
										<tr>
											<td><img src="${vo.photo}" width="100px" height="100px"></td>
											<td><a
												href="prisoner_info_form.do?prison_number=${vo.prison_number}">${vo.prison_number}</a></td>
											<td>${vo.name}</td>
											<td>${vo.age}</td>
											<td>${vo.sex}</td>
											<td>${vo.prison_area}</td>
											<td>${vo.room_number}</td>
											<td>${vo.crime_classification}</td>
											<td>${vo.before_crime}</td>
											<td><button class="btn btn-default btn-sm">삭제</button></td>
										</tr>
									</c:forEach>
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
				<input type="text" id="search-input"
					placeholder="Search here${pageContext.request.contextPath}${pageContext.request.contextPath}.">
			</form>
		</div>
	</div>
	<!-- Search model end -->

</body>

</html>