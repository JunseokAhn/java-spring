<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.first {
	position: fixed;
}

.second {
	position: fixed;
	left: 90px;
}
</style>
</head>
<body>
	<form action="writing" method="post">
		<h2>[방명록 글쓰기]</h2>
		<div class="first">
			이름
			<br>
			비밀번호
			<br>
			내용
		</div>
		<div class="second">
			<input type="text" name="name">
			<br>
			<input type="text" name="password">
			<br>
			<textarea rows="15px" cols="100px" style="resize: none;"
				name="contents"></textarea>
			<br>
			<input type="submit" style="align-self: center;" value="저장">
		</div>
	</form>
</body>
</html>