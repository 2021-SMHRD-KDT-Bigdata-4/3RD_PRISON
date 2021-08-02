<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">



	function goAjax() {
		$.ajax({
			url : '${cpath}/bookListAjax.do',
			type : "get",
			dataType : "json",
			success : resultHtml,
			error : function() {
				alert("오류")
			}

		})

	}
	

	function resultHtml(data) { //data = json == [{obj},{obj},{obj}]
		var html = "<table class='table'>";
		html += "<tr>";
		html += "<td>번호</td>";
		html += "<td>제목</td>";
		html += "<td>조회수</td>";
		html += "<td>작성자</td>";
		html += "<td>작성일</td>"
		html += "<td>작성자</td>";
		html += "</tr>";
		$.each(data,(index,obj)=>{
			html += "<tr>";
			html += "<td id='num"+index+"'>"+obj.num+"</td>";
			html += "<td>"+obj.title+"</td>";
			html += "<td>"+obj.author+"</td>";
			html += "<td>"+obj.company+"</td>";
			html += "<td>"+obj.isbm+"</td>";
			html += "<td>"+obj.count+"</td>";
			html += "</tr>";
		});
		html += "</table>";
		$("#list").html(html);
	}

</script>
</head>
<body>
	<div class="container">
		<h2>Spring MVC BOOK BOARD</h2>
		<div class="panel panel-default">
			<div class="panel-heading">BOOK BOARD LIST</div>
			<div class="panel-body">
				<table class="table">
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>조회수</td>
						<td>작성자</td>
						<td>작성일</td>
						<td>삭제</td>
					</tr>
					<c:forEach var="vo" items="${list}">
						<tr>
							<td>${vo.num}</td>
							<td>${vo.title}</td>
							<td>${vo.author}</td>
							<td>${vo.company}</td>
							<td>${vo.isbm}</td>
							<td>${vo.count}</td>
						</tr>
					</c:forEach>
				</table>
				<input type="button" value="도서목록 가져오기"
					class="btn btn-info btn-sm" onclick="goAjax()">
				<div id="list"></div>
			</div>
			<div class="panel-footer">빅데이터 4차 스프링 시험 김남진</div>
		</div>


	</div>
</body>
</html>