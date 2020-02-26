<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value="/resources/js/jquery-3.4.1.js/"/>"></script>
<title>Home</title>
<script type="text/javascript">
	$(function() {
		$('#bt1').on('click', function() {
			var n = $('#name').val()
			var a = $('#age').val()
			var p = $('#tel').val()
			if (!(n.length < 3 || a.length < 3 || p.length < 3)) {
				$.ajax({
					url : 'ajax3',
					dataType : 'text',
					type : 'POST',
					data : {
						name : n,
						age : a,
						phone : p
					},
					success : function(e) {
						console.log('성공' + e)
						$('#name').val(' ')
						$('#age').val(' ')
						$('#tel').val(' ')
						$('#name').focus()
					},
					error : function(e) {
						console.log('실패')
					}
				})
			} else {
				console.log('유효성검사실패')
			}
		})

		$('#bt2').on('click', function() {
			var n = $('#name2').val()
			var a = $('#age2').val()
			var t = $('#tel2').val()
			$.ajax({
				url : 'ajax4',
				dataType : 'text',
				type : 'POST',
				data : {
					name : n,
					age : a,
					tel : t
				},
				success : function(e) {
					console.log('성공')
					$('#output').html(e)
				},
				error : function() {
					console.log('실패')
				}
			})

		})

		$('#bt3').on('click', function() {
			var n = $('#name2').val()
			var a = $('#age2').val()
			var t = $('#tel2').val()
			$.ajax({
				url : 'ajax4',
				dataType : 'JSON',
				type : 'POST',
				data : {
					name : n,
					age : a,
					tel : t
				},
				success : function(e) {
					console.log('성공')
					$('#output').html(e.name)
				},
				error : function() {
					console.log('실패')
				}
			})

		})
	})
</script>
</head>
<body>
	<h1>Ajax2</h1>
	<p>서버로 각각의 파라미터 전달</p>
	<form action="" id="writeform">
		이름
		<input id="name">
		<br>
		나이
		<input id="age">
		<br>
		전화
		<input id="tel">
		<br>
		<input type="button" id="bt1" value="저장">
	</form>
	<hr>
	<form action="" id="writeform2">
		이름
		<input id="name2">
		<br>
		나이
		<input id="age2">
		<br>
		전화
		<input id="tel2">
		<br>
		<input type="button" id="bt2" value="데이터로출력">
		<input type="button" id="bt3" value="객체로출력">
	</form>
	<div id="output"></div>
</body>
</html>