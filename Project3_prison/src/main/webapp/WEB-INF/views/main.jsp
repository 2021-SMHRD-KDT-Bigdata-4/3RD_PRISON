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
<title>코도소 3차 프로젝트 | 메인화면</title>

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
								<li class="active"><a href="main.do">Home</a></li>
								<li><a href="#">재소자</a>
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

	<!-- Hero Section Begin -->
	<section class="hero-section set-bg"
		data-setbg="${pageContext.request.contextPath}/resources/img/hero/pic1.jpg"
		style='background-image: url("${pageContext.request.contextPath}/resources/img/hero/pic1.jpg");'>

		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="hs-item">
						<div class="container">
							<div class="row">
								<div class="col-lg-12">
									<div class="hs-text txt_animate">
										<span>변</span> <span>화</span> <span>를</span> <span>&nbsp;</span>
										<span>향</span> <span>한</span> <span>&nbsp;</span> <span>믿</span>
										<span>음</span>

									</div>
									<div class="hs-text txt_animate-1">
										<span>함</span> <span>께</span> <span>&nbsp;</span> <span>만</span>
										<span>들</span> <span>어</span> <span>가</span> <span>는</span> <span>&nbsp;</span>
										<span>국</span> <span>민</span> <span>안</span> <span>전</span>
									</div>
									<div class="col-lg-13">
										<a href="#" class="primary-btn"> More Details</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Trending News Section Begin -->
	<div class="trending-news-section">
		<div class="container">
			<div class="tn-title">
				<i class="fa fa-caret-right"></i> Trending News
			</div>
			<div class="news-slider owl-carousel owl-loaded">
				<div class="nt-item">영상분석을 통한 재소자 이상징후 감지 및 교정업무 통합관리 서비스</div>

			</div>
		</div>
	</div>
	<!-- Trending News Section End -->




	<!-- Latest Section Begin -->
	<section class="soccer-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="section-title latest-title">
						<h3>
							Latest <span>News</span>
						</h3>
						<ul>
							<li>All</li>
							<li>Covid-19</li>
							<li>Prison</li>
							<li>Society</li>
						</ul>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="news-item left-news">
								<div class="ni-pic set-bg"
									data-setbg="${pageContext.request.contextPath}/resources/img/news/codoso-1.jpg"
									style='background-image: url("${pageContext.request.contextPath}/resources/img/news/codoso-1.jpg");'>
									<div class="ni-tag">코로나</div>
								</div>
								<div class="ni-text">
									<h4>
										<a href="https://www.yna.co.kr/view/AKR20210804144300004"
											id="title1">교정시설 코로나 감염 잇달아…</a>
									</h4>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
									<p>전국 교정시설에서 신종 코로나바이러스 감염증(코로나19) 확진자들이 잇달아 나오고 있다. 4일
										법무부에 따르면 전날 인후통 증상을 보여 유전자증폭(PCR) 검사를 받은 강원북부교도소 직원 1명이 이날 확진
										판정을 받았다.</p>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="news-item">
								<div class="ni-pic">
									<img
										src="${pageContext.request.contextPath}/resources/img/news/codoso-2.jpeg"
										alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="https://m.dailian.co.kr/news/view/1019365"
											id="title1">윤리와 여론 사이… 딜레마에 빠진 세계의 교정당국들</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> August 5, 2021</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img
										src="${pageContext.request.contextPath}/resources/img/news/codoso-3.jpg"
										alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a
											href="https://www.mk.co.kr/news/society/view/2021/07/719221/"
											id="title1">교도소서 동료 수형자 초코바 훔쳐 먹고 난동…징역형</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> July 26, 2021</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img
										src="${pageContext.request.contextPath}/resources/img/news/codoso-4.jpg"
										alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a
											href="https://www.jjan.kr/news/articleView.html?idxno=2113613"
											id="title1">자바교도소 교정협의회, 수용자들에 아이스크림 전달</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> July 27, 2021</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img
										src="${pageContext.request.contextPath}/resources/img/news/codoso-5.jpg"
										alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="BbungEzRong.do" id="title1">자바교도소 23대 주익정 소장 취임</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> July 19, 2021</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="section-title">
						<h3>
							이달의 <span>교도관</span>
						</h3>
					</div>
					<div class="points-table">
						<table>
							<thead>
								<tr>
									<th class="th-o">순위</th>
									<th>이름</th>
									<th class="th-o">지각</th>
									<th class="th-o">점수</th>
									<th class="th-o"></th>
									<th class="th-o">합계</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td class="team-name"><span>장영우</span></td>
									<td>0</td>
									<td>23</td>
									<td></td>
									<td>23</td>
								</tr>
								<tr>
									<td>2</td>
									<td class="team-name"><span>김남진</span></td>
									<td>0</td>
									<td>22</td>
									<td></td>
									<td>22</td>
								</tr>
								<tr>
									<td>3</td>
									<td class="team-name"><span>박주현</span></td>
									<td>0</td>
									<td>21</td>
									<td></td>
									<td>21</td>
								</tr>
								<tr>
									<td>4</td>
									<td class="team-name"><span>정지윤</span></td>
									<td>1</td>
									<td>21</td>
									<td></td>
									<td>20</td>
								</tr>
								<tr>
									<td>5</td>
									<td class="team-name"><span>김은혜</span></td>
									<td>0</td>
									<td>17</td>
									<td></td>
									<td>17</td>
								</tr>
								<tr>
									<td>6</td>
									<td class="team-name"><span>김온유</span></td>
									<td>2</td>
									<td>18</td>
									<td></td>
									<td>16</td>
								</tr>
								<tr>
									<td>7</td>
									<td class="team-name"><span>김영주</span></td>
									<td>0</td>
									<td>14</td>
									<td></td>
									<td>14</td>
								</tr>
								<tr>
									<td>8</td>
									<td class="team-name"><span>주익정</span></td>
									<td>5</td>
									<td>15</td>
									<td></td>
									<td>10</td>
								</tr>
							</tbody>
						</table>
						<a href="#" class="p-all">View All</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Latest Section End -->





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
				<input type="text" id="search-input" placeholder="Search here.">
			</form>
		</div>
	</div>
	<!-- Search model end -->



</body>

</html>