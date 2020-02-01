<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>[방명록]</h2>
	<a href="writing">글쓰기</a>
	<input type="button" value="글쓰기" onclick="writing()">
	<c:if test="${list.size()==0 }">
		<p>등록된 방명록이 없습니다.</p>
	</c:if>
	<c:if test="${list.size()>0 }">
		<c:forEach var="i" items="${list }">
			<hr>
			<p>작성자 :${i.name }</p>
			<p>작성일 :${i.inputdate }</p>
			<p>내용 :${i.contents }</p>
			<p>
				비밀번호
				<input type="password" id="password${i.num}" name="password2">
				<input type="button" value="삭제" onclick="deleting('${i.num}')">
			</p>
		</c:forEach>
		<form action="deleting" id="hidden" method="post">
			<input type="hidden" id="hidnum" name="hidnum">
			<input type="hidden" id="hidpass" name="hidpass">
		</form>
	</c:if>
</body>
<script type="text/javascript">
	function writing() {
		location.href = 'writing';
	}
	function deleting(num) {

		/* location.href = 'deleting?num=' + num + '&password='+ document.getElementById('password' + num).value */

		var hiddenform = document.getElementById('hidden')
		var hidnum = document.getElementById('hidnum')
		var hidpass = document.getElementById('hidpass')
		hidnum.value = num;
		hidpass.value = 'password' + num
		hiddenform.submit();
	}
</script>
</html>