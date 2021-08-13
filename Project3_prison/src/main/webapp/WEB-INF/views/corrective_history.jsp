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
<title>코도소 3차 프로젝트 | 교정 사고 내역</title>

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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.js"></script>
<!-- bootstrap -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	function aaa(data1) {
		alert("여끼까지 오면 aa가 불러와진것");

		google.charts.load('current', {
			packages : [ 'corechart', 'bar' ]
		});
		google.charts.setOnLoadCallback(drawBasic);

		function drawBasic() {
			alert(typeof (Number(data1[0].case1)));
			alert(typeof (data1[0].case1));
			var data = new google.visualization.DataTable();
			data.addColumn('timeofday', 'Time of Day');
			data.addColumn('number', 'Motivation Level');

			data.addRows([ [ {
				v : [ 8, 0, 0 ],
				f : '8 am'
			}, Number(data1[0].case1) ], [ {
				v : [ 9, 0, 0 ],
				f : '9 am'
			}, Number(data1[0].case2) ], [ {
				v : [ 10, 0, 0 ],
				f : '10 am'
			}, Number(data1[0].case3) ], [ {
				v : [ 11, 0, 0 ],
				f : '11 am'
			}, Number(data1[0].case4) ], [ {
				v : [ 12, 0, 0 ],
				f : '12 pm'
			}, Number(data1[0].case5) ], [ {
				v : [ 13, 0, 0 ],
				f : '1 pm'
			}, Number(data1[0].case6) ], [ {
				v : [ 14, 0, 0 ],
				f : '2 pm'
			}, Number(data1[0].case7) ], [ {
				v : [ 15, 0, 0 ],
				f : '3 pm'
			}, Number(data1[0].case8) ], [ {
				v : [ 16, 0, 0 ],
				f : '4 pm'
			}, Number(data1[0].case1) ], [ {
				v : [ 17, 0, 0 ],
				f : '5 pm'
			}, Number(data1[0].case2) ], ]);

			var options = {
				title : 'Motivation Level Throughout the Day',
				hAxis : {
					title : 'Time of Day',
					format : 'h:mm a',
					viewWindow : {
						min : [ 7, 30, 0 ],
						max : [ 17, 30, 0 ]
					}
				},
				vAxis : {
					title : 'Rating (scale of 1-10)'
				}
			};

			var chart = new google.visualization.ColumnChart(document
					.getElementById('chart_div'));

			chart.draw(data, options);
		}

	}

	function allhidden() {
		$("#all").css("display", "none");
		$("#chart_div").css("display", "block");
		var formData = $("#frm").serialize();
		alert(formData)
		$.ajax({ //서버로 요청하기위해 꼭 써야됨
			url : "${cpath}/corrective_history_clfchart.do", //여기로 보내주셈
			type : "post", //JSON = dic : {"idx":1,"name":"홍길동"}
			data : formData,
			success : function(data1) {
				alert("여끼까지 오면 성공인것");
				aaa(data1)
			}, //성공하면 콜백함수로
			dataType : "json",
			error : function() {
				alert("실패");
			}
		});

	}
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
								<li class="active"><a href="#">교정사고</a>
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
						<h2>교정 사고 내역</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Club Section Begin -->
	<div style="display: block" ; id="all">




		<section class="club-section-1 spad-3">
			<div class="search-div">
				<form action="${cpath}/corrective_history_search.do" method="post">
					<div class="search-jailer-div">
						<select name="part" class="search-jailer">
							<option value="prisoner_prison_number">수감번호</option>
							<option value="classification">분류</option>
							<option value="calibration_accident_number">교정사고번호</option>
						</select> <input class="input-jailer" type="text" name="keyword"
							placeholder="Search${pageContext.request.contextPath}">
						<button class="btn btn-default btn-lg">검색</button>
						<a href="corrective_history_add.do"><button type="button"
								class="btn btn-default btn-lg">추가</button></a>

					</div>
				</form>








				<div class="input_field">


					<form id="frm" method="post" onsubmit="return false;">
						<input type="date" id="startDate" name="startDate"> <input
							type="date" id="endDate" name="endDate">
						<button type="submit" class="btn btn-default btn-lg"
							onclick="allhidden()">차트보기</button>
					</form>
				</div>












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
											<th>교정 사고 번호</th>
											<th>수감 번호</th>
											<th>발생 일시</th>
											<th>발생 장소</th>
											<th>분류</th>
											<th>상세 내용</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="vo" items="${list}">
											<tr>
												<td><a
													href="corrective_history_content.do?calibration_accident_number=${vo.calibration_accident_number}">${vo.calibration_accident_number}</a></td>
												<td>${vo.prisoner_prison_number}</td>
												<td>${vo.occuring_time}</td>
												<td>${vo.occuring_place}</td>
												<td>${vo.classification}</td>
												<td>${vo.details}</td>
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


	</div>
	<div class="input_field">


		<div style="display: none" ; id="chart_div"></div>
	</div>


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