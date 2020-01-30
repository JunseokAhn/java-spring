<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>[방명록]</h2>
	<input type="button" value="글쓰기" onclick="writing()">
	<a href="writing">글쓰기</a>
	<hr>
	<p>작성자 :</p>
	<p>작성일 :</p>
	<p></p>
	<p>
		비밀번호
		<input type="password">
		<input type="button" value="삭제" onclick="drop()">
	</p>
</body>
<script type="text/javascript">
	function writing() {
		location.href = 'writing';
	}
	function drop() {
		location.href = 'drop';
	}
</script>
</html>