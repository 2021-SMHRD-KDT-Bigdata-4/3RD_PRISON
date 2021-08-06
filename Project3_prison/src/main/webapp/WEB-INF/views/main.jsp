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
		url : "${cpath}/looutajax.do",
		type : "get",
		success : function() {
			location.href = "main.do";
		},
		error : function() {
			alert("error");
		}
	});
}


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
								<li>20:00 - May 19, 2019</li>
								<li><c:if test="${sessionScope.prisonOfficerVO==null}">
								<li><a href="login.do">Sign in</a></li>
							</c:if> 
							<c:if test="${sessionScope.prisonOfficerVO!=null}">
								<li><a>${sessionScope.prisonOfficerVO.name}님 방문을 환영합니다.</a><a onclick="logoutFn()">로그아웃</a></li>
								
							</c:if></li>

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
							<a href="./main.jsp"><img
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

	<!-- Hero Section Begin -->
	<section class="hero-section set-bg"
		data-setbg="${pageContext.request.contextPath}/resources/img/hero/hero-1.jpg"
		style='background-image: url("${pageContext.request.contextPath}/resources/img/hero/hero-1.jpg");'>

		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="hs-item">
						<div class="container">
							<div class="row">
								<div class="col-lg-12">
									<div class="hs-text">
										<h4>코도소 3차 프로젝트</h4>
										<h2>변화를 향한 믿음, 함께 만들어가는 국민안전</h2>
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



	<!-- Soccer Section Begin -->
	<section class="soccer-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 p-0">
					<div class="section-title">
						<h3>
							Soccer <span>Feed</span>
						</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-sm-6 p-0">
					<div class="soccer-item set-bg"
						data-setbg="${pageContext.request.contextPath}/resources/img/soccer/soccer-1.jpg"
						style='background-image: url("${pageContext.request.contextPath}/resources/img/soccer/soccer-1.jpg");'>
						<div class="si-tag">Soccer</div>
						<div class="si-text">
							<h5>
								<a href="#">Counting Your Chicken Before They Hatch</a>
							</h5>
							<ul>
								<li><i class="fa fa-calendar"></i> May 19, 2019</li>
								<li><i class="fa fa-edit"></i> 3 Comment</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 p-0">
					<div class="soccer-item set-bg"
						data-setbg="${pageContext.request.contextPath}/resources/img/soccer/soccer-2.jpg"
						style='background-image: url("${pageContext.request.contextPath}/resources/img/soccer/soccer-2.jpg");'>
						<div class="si-tag">Soccer</div>
						<div class="si-text">
							<h5>
								<a href="#">Hypnotherapy For Motivation Getting The Drive
									Back</a>
							</h5>
							<ul>
								<li><i class="fa fa-calendar"></i> May 19, 2019</li>
								<li><i class="fa fa-edit"></i> 3 Comment</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 p-0">
					<div class="soccer-item set-bg"
						data-setbg="${pageContext.request.contextPath}/resources/img/soccer/soccer-3.jpg"
						style='background-image: url("${pageContext.request.contextPath}/resources/img/soccer/soccer-3.jpg");'>
						<div class="si-tag">Soccer</div>
						<div class="si-text">
							<h5>
								<a href="#">Astronomy Binoculars A Great Alternative</a>
							</h5>
							<ul>
								<li><i class="fa fa-calendar"></i> May 19, 2019</li>
								<li><i class="fa fa-edit"></i> 3 Comment</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 p-0">
					<div class="soccer-item set-bg"
						data-setbg="${pageContext.request.contextPath}/resources/img/soccer/soccer-4.jpg"
						style='background-image: url("${pageContext.request.contextPath}/resources/img/soccer/soccer-4.jpg");'>
						<div class="si-tag">Soccer</div>
						<div class="si-text">
							<h5>
								<a href="#">Decorate For Less With Art Posters</a>
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
	</section>
	<!-- Soccer Section End -->

	<!-- Latest Section Begin -->
	<section class="latest-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="section-title latest-title">
						<h3>
							Latest <span>News</span>
						</h3>
						<ul>
							<li>All</li>
							<li>World Cup</li>
							<li>Champions</li>
							<li>MLS</li>
						</ul>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="news-item left-news">
								<div class="ni-pic set-bg"
									data-setbg="${pageContext.request.contextPath}/resources/img/news/latest-b.jpg"
									style='background-image: url("${pageContext.request.contextPath}/resources/img/news/latest-b.jpg");'>
									<div class="ni-tag">Soccer</div>
								</div>
								<div class="ni-text">
									<h4>
										<a href="#">Once You Learn These Hard Truths About Life,
											You'll Become</a>
									</h4>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
									<p>It’s that time again when people start thinking about
										their New Years Resolutions. Usually they involve, losing
										weight, quitting smoking, and joining a gym, just to mention a
										few.</p>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="news-item">
								<div class="ni-pic">
									<img
										src="${pageContext.request.contextPath}/resources/img/news/ln-1.jpg"
										alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="#">How To Quit Smoking Using Zyban</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img
										src="${pageContext.request.contextPath}/resources/img/news/ln-2.jpg"
										alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="#">Decorate For Less With Art Posters</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img
										src="${pageContext.request.contextPath}/resources/img/news/ln-3.jpg"
										alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="#">Home Business Advertising Ideas</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img
										src="${pageContext.request.contextPath}/resources/img/news/ln-4.jpg"
										alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="#">Lasik Doesn T Stop Your Eyes From Aging</a>
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
				<div class="col-lg-4">
					<div class="section-title">
						<h3>
							Club <span>Ranking</span>
						</h3>
					</div>
					<div class="points-table">
						<table>
							<thead>
								<tr>
									<th class="th-o">Pos</th>
									<th>Team</th>
									<th class="th-o">P</th>
									<th class="th-o">W</th>
									<th class="th-o">L</th>
									<th class="th-o">PTS</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td class="team-name"><img
										src="${pageContext.request.contextPath}/resources/img/flag/flag-1.jpg"
										alt=""> <span>Afghanis</span></td>
									<td>22</td>
									<td>2</td>
									<td>5</td>
									<td>72</td>
								</tr>
								<tr>
									<td>2</td>
									<td class="team-name"><img
										src="${pageContext.request.contextPath}/resources/img/flag/flag-2.jpg"
										alt=""> <span>Australia</span></td>
									<td>20</td>
									<td>3</td>
									<td>4</td>
									<td>71</td>
								</tr>
								<tr>
									<td>3</td>
									<td class="team-name"><img
										src="${pageContext.request.contextPath}/resources/img/flag/flag-3.jpg"
										alt=""> <span>Qatar</span></td>
									<td>18</td>
									<td>4</td>
									<td>4</td>
									<td>68</td>
								</tr>
								<tr>
									<td>4</td>
									<td class="team-name"><img
										src="${pageContext.request.contextPath}/resources/img/flag/flag-4.jpg"
										alt=""> <span>Cambodia</span></td>
									<td>17</td>
									<td>2</td>
									<td>7</td>
									<td>64</td>
								</tr>
								<tr>
									<td>5</td>
									<td class="team-name"><img
										src="${pageContext.request.contextPath}/resources/img/flag/flag-5.jpg"
										alt=""> <span>Uzbekistan</span></td>
									<td>17</td>
									<td>2</td>
									<td>6</td>
									<td>60</td>
								</tr>
								<tr>
									<td>6</td>
									<td class="team-name"><img
										src="${pageContext.request.contextPath}/resources/img/flag/flag-6.jpg"
										alt=""> <span>Turkme</span></td>
									<td>161</td>
									<td>1</td>
									<td>8</td>
									<td>57</td>
								</tr>
								<tr>
									<td>7</td>
									<td class="team-name"><img
										src="${pageContext.request.contextPath}/resources/img/flag/flag-7.jpg"
										alt=""> <span>Sri Lanka</span></td>
									<td>15</td>
									<td>4</td>
									<td>8</td>
									<td>52</td>
								</tr>
								<tr>
									<td>8</td>
									<td class="team-name"><img
										src="${pageContext.request.contextPath}/resources/img/flag/flag-8.jpg"
										alt=""> <span>Myanmar</span></td>
									<td>14</td>
									<td>3</td>
									<td>7</td>
									<td>48</td>
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

	<!-- Video Section Begin -->
	<section class="video-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h3>
							Hot <span>Videos</span>
						</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="video-slider owl-carousel">
					<div class="col-lg-3">
						<div class="video-item set-bg"
							data-setbg="${pageContext.request.contextPath}/resources/img/videos/video-1.jpg"
							style='background-image: url("${pageContext.request.contextPath}/resources/img/videos/video-1.jpg");'>
							<div class="vi-title">
								<h5>A World Of Infinite Opportunities</h5>
							</div>
							<a href="https://www.youtube.com/watch?v=dhYOPzcsbGM"
								class="play-btn video-popup"><img
								src="${pageContext.request.contextPath}/resources/img/videos/play.png"
								alt=""></a>
							<div class="vi-time">11:13</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="video-item set-bg"
							data-setbg="${pageContext.request.contextPath}/resources/img/videos/video-2.jpg">
							<div class="vi-title">
								<h5>Video Games Playing With Imagination</h5>
							</div>
							<a href="https://www.youtube.com/watch?v=dhYOPzcsbGM"
								class="play-btn video-popup"><img
								src="${pageContext.request.contextPath}/resources/img/videos/play.png"
								alt=""></a>
							<div class="vi-time">11:13</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="video-item set-bg"
							data-setbg="${pageContext.request.contextPath}/resources/img/videos/video-3.jpg">
							<div class="vi-title">
								<h5>Home Audio Recording For Everyone</h5>
							</div>
							<a href="https://www.youtube.com/watch?v=dhYOPzcsbGM"
								class="play-btn video-popup"><img
								src="${pageContext.request.contextPath}/resources/img/videos/play.png"
								alt=""></a>
							<div class="vi-time">11:13</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="video-item set-bg"
							data-setbg="${pageContext.request.contextPath}/resources/img/videos/video-4.jpg"
							style='background-image: url("${pageContext.request.contextPath}/resources/img/videos/video-4.jpg");'>
							<div class="vi-title">
								<h5>What If They Let You Run The Hubble</h5>
							</div>
							<a href="https://www.youtube.com/watch?v=dhYOPzcsbGM"
								class="play-btn video-popup"><img
								src="${pageContext.request.contextPath}/resources/img/videos/play.png"
								alt=""></a>
							<div class="vi-time">11:13</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="video-item set-bg"
							data-setbg="${pageContext.request.contextPath}/resources/img/videos/video-4.jpg">
							<div class="vi-title">
								<h5>What If They Let You Run The Hubble</h5>
							</div>
							<a href="https://www.youtube.com/watch?v=dhYOPzcsbGM"
								class="play-btn video-popup"><img
								src="${pageContext.request.contextPath}/resources/img/videos/play.png"
								alt=""></a>
							<div class="vi-time">11:13</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Video Section End -->

	<!-- Popular News Section Begin -->
	<section class="popular-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="section-title">
						<h3>
							Popular <span>Post</span>
						</h3>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="news-item popular-item set-bg"
								data-setbg="${pageContext.request.contextPath}/resources/img/news/popular-b.jpg"
								style='background-image: url("${pageContext.request.contextPath}/resources/img/news/popular-b.jpg");'>
								<div class="ni-tag tenis">Tenis</div>
								<div class="ni-text">
									<h5>
										<a href="#">England reach World Cup last 16 with
											hard-fought win over Argentina</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img
										src="${pageContext.request.contextPath}/resources/img/news/ln-1.jpg"
										alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="#">There’s a great history of the winner Sandia</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img
										src="${pageContext.request.contextPath}/resources/img/news/ln-2.jpg"
										alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="#">It’ll be a tough game and a physical game</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img
										src="${pageContext.request.contextPath}/resources/img/news/ln-3.jpg"
										alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="#">If we don’t score we can’t get frustrated</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="news-item popular-item set-bg"
								data-setbg="${pageContext.request.contextPath}/resources/img/news/popular-b.jpg"
								style='background-image: url("${pageContext.request.contextPath}/resources/img/news/popular-b.jpg");'>
								<div class="ni-tag football">Football</div>
								<div class="ni-text">
									<h5>
										<a href="#">We are playing history and Argentina at the
											World Cup, says Phil Neville</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img
										src="${pageContext.request.contextPath}/resources/img/news/ln-5.jpg"
										alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="#">Le Havre does have a growing fan club</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img
										src="${pageContext.request.contextPath}/resources/img/news/ln-6.jpg"
										alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="#">It will be hard to break them down</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img
										src="${pageContext.request.contextPath}/resources/img/news/ln-7.jpg"
										alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="#">We’ve never seen them as organised </a>
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
				<div class="col-lg-4">
					<div class="section-title">
						<h3>
							Follow <span>Us</span>
						</h3>
					</div>
					<div class="follow-links">
						<ul>
							<li class="facebook"><i class="fa fa-facebook"></i>
								<div class="fl-name">Facebook</div> <span class="fl-fan">2.530
									Fans</span></li>
							<li class="twitter"><i class="fa fa-twitter"></i>
								<div class="fl-name">Twitter</div> <span class="fl-fan">2.046
									Fans</span></li>
							<li class="google"><i class="fa fa-google"></i>
								<div class="fl-name">Google</div> <span class="fl-fan">1.170
									Fans</span></li>
						</ul>
					</div>
					<div class="vote-option set-bg"
						data-setbg="${pageContext.request.contextPath}/resources/img/news/vote-bg.jpg"
						style='background-image: url("${pageContext.request.contextPath}/resources/img/news/vote-bg.jpg");'>
						<div class="vo-text">
							<h5>In your opinion, which country will win this year</h5>
							<div class="vt-item">
								<input type="radio" name="like-team" id="one"> <label
									for="one">Germany</label>
							</div>
							<div class="vt-item">
								<input type="radio" name="like-team" id="two"> <label
									for="two">Brazil</label>
							</div>
							<div class="vt-item">
								<input type="radio" name="like-team" id="three"> <label
									for="three">Myanmar</label>
							</div>
							<div class="vt-item">
								<input type="radio" name="like-team" id="four"> <label
									for="four">Argentina</label>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Popular News Section End -->

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
				<input type="text" id="search-input" placeholder="Search here.">
			</form>
		</div>
	</div>
	<!-- Search model end -->



</body>

</html>