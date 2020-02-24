<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value="/resources/js/jquery-3.4.1.js/"/>"></script>
<title>Home</title>
<script type="text/javascript">
	$(function() {

		$('#bt1').on('click', function() {
			$('#div1').hide()
		})
		$('#bt2').on('click', function() {
			$('#div1').show()

		})
		$('img').on('mouseenter', function() {
			/* $(this).animate({
				width : "200%",
				height : "200%"
			}, 2000) */
			$(this).animate({
				top : "100px",
				left : "500px"
			}, 5000)
		})
		$('img').on('mouseleave', function() {
			$(this).animate({
				width : "15%",
				height : "15%"
			}, 1000)
		})
		$('img').on('click', function() {
			$(this).animate({
				left: "+=100px"
			}, 1000)
		})
	})
</script>
</head>
<body>


	<div id="div1">이 문장은 사라집니다</div>
	<input type="button" value="사라지게하하는 버튼" id="bt1">
	<input type="button" value="나타나게하하는 버튼" id="bt2">
	<hr>
	<img alt="" src="<c:url value="/resources/img/default.png"/>" style="position: relative;">

</body>
</html>