<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>
	<h1>js2</h1>
	<p>
		<a href="javascript:goTest()">뒤로</a>
	</p>
	<p>
		<a href="javascript:goTest2()">현재 창 닫기</a>
	</p>
</body>
<script type="text/javascript">
	function goTest() {
		history.go(-1);

	}
	function goTest2() {
		window.close();
	}
</script>
</html>