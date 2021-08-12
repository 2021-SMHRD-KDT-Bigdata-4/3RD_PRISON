<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="raspicamera">
		<input type="button" value="load" onclick="window.location.reload();" />
		<iframe class="center" width="640" height="480"
			src="http://211.227.224.166:8080/stream" id="camera1"></iframe>
	</div>
</body>
</html>