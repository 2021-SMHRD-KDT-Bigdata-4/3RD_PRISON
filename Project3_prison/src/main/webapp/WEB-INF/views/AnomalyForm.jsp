<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<c:set var="cpath" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
 
<div class="container">
  <h2>스프링</h2>
  <div class="panel panel-default">
    <div class="panel-heading">Panel Heading</div>
    <div class="panel-body">
    <form id="frm" method="post" >
               <div class="form-group">
                  <label>제목: </label> 
                  <input type="text" class="form-control" id="anomalies" name="anomalies">
               </div>
               <div class="form-group">
                  <label>내용:</label> 
                   <textarea class="form-control" rows="5" id=actual_anomalies name="actual_anomalies"></textarea>
               </div>   
               <div class="form-group">
                  <label>작성자: </label> 
                  <input type="text" class="form-control" id="prioson_officer_po_no" name="prioson_officer_po_no">
               </div>               
               <input type="submit" class="btn btn-primary btn-sm" value="글쓰기" onclick="goWriter()">                  
               <input type='reset' value='취소' class='btn btn-warning btn-sm'>   
            </form>    
    </div>
    <div class="panel-footer">빅데이터분석-4차(?)</div>
  </div>
</div>

</body>
</html>