<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="join2" method="post">
		아이디
		<input id="userID" type="text" name="userID" placeholder="아이디를 입력하세요">
		비밀번호
		<input id="userPW" type="password" name="userPW" placeholder="비밀번호를 입력하세요">
		<br> 이름
		<input id="userName" type="text" name="userName">
		<input type="submit" value="회원가입하기">
	</form>
</body>
</html>