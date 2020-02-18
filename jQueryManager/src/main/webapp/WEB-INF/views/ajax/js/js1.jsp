<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>
	<h1>Sample</h1>
	<p>
		<a href="js2">js2보기</a>
	</p>
	<p>
		<a href="javascript:test1()">js2보기</a>
	</p>
	<p>
		<a href="javascript:test2()">새창열기</a>
	</p>
	<p>
		<a href="javascript:test3()">이동여부를 묻는 이동링크</a>
	</p>
	<p>
		<a href="javascript:test4()">3초뒤 이동하는 링크</a>
	</p>
	<p>
		<a href="javascript:test5()">이동취소</a>
	</p>
</body>
<script type="text/javascript">
	function test1() {
		alert(location.href);
		location.href = 'js2'
	}

	function test2() {
		window.open('js2', 'js2',
				'top=200, left=400, width=400, height=300, location=0')
	}

	function test3() {
		if (confirm('이동하시겠습니까')) {
			location.href = 'js2';
		} else {

		}
	}
	var time;
	function test4() {
		time = setTimeout(function() {
			location.href = 'js2'
		}, 3000);

	}

	function test5() {
		clearTimeout(time)
	}
</script>
</html>