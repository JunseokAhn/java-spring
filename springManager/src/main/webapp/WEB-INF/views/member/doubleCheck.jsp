<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post">
		<input type="text" id="doubleCheck" name="doubleCheck"
			placeholder="ID를 입력하세요">
		<input type="submit" value="중복검사">
		<hr>
		<c:if test="${requestScope.result.equals('null')}">
			${requestScope.id} 는 사용가능합니다.
				<input type="button" value="ID사용하기"	onclick="closing()">
		</c:if>
		<c:if test="${requestScope.result.equals('exist')}">
			${requestScope.id} 는 사용불가능합니다.
		
		</c:if>
	</form>
	<form action="" method="post" id="hide">
		<input type="hidden" id="hidden">
	</form>
	<script type="text/javascript">
		function closing(){
			opener.document.getElementById('userId').value = '${requestScope.id}';
			this.close()
		}
	</script>
</body>
</html>