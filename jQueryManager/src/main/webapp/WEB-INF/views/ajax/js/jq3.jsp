<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value="/resources/js/jquery-3.4.1.js/"/>"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#bt1').on('click', test1);
		$('#offevent').on('click', test2);
		$('#onevent').on('click', test3);
		$('#img').on('mouseover', img1);
		$('#img').on('mouseout', img2);
		$('#text1').on('click', text1);
		$('#text2').on('click', text2);
		$('#text3').on('click', text3);
		$('img').on('mouseover', function() {
			/* alert($(this).css('width')); */
			/* alert($(this).width()); */
			$(this).width($(this).width() * 2)
		})
		$('img').on('mouseout', function() {
			$(this).width($(this).width() / 2)
		})
		$('img').on('click', function() {
			$(this).attr('src', '<c:url value="/resources/img/default2.png"/>')
		})
		$('.bts').on('click', function() {
			alert($(this).attr('data'))
		})

		$('#bt4').on('click', function() {
			var name = [ 'default.png', 'default2.png', 'default3.png' ];
			var curl = '<c:url value="/resources/img/';
			var curl2 = '"/>';
			var tag = '';
			$(name).each(function(index, item) {
				tag += '<img src="'+curl+item+curl2+'">'
			})

			$('#output').html(tag)
		})
	})

	function test1() {
		alert('bt1실행')
	}
	function test2() {
		$('#bt1').off()
	}
	function test3() {
		$('#bt1').on('click', test1);
	}
	function img1() {
		$('#img').css('border', '3px solid grey')
	}
	function img2() {
		$('#img').css('border', '0')
	}
	function text1() {
		alert('tx1실행')
	}
	function text2() {
		$('#text1').trigger('click');
	}
	function text3() {
		setTimeout(function() {
			$('#text1').trigger('click')
		}, 3000)
	}
</script>
<link href="<c:url value="/resources/css/default.css"/>" rel="stylesheet">

<title>Home</title>
</head>
<body>
	<h1>Sample</h1>
	<p>
		<input type="button" value="버튼1" id="bt1">
	</p>
	<p>
		<input type="button" value="이벤트연결" id="onevent">
	</p>
	<p>
		<input type="button" value="이벤트연결해제" id="offevent">
	</p>
	<p>
		<img alt="" src="<c:url value="/resources/img/default.png"/>" id='img'>
	</p>
	<p id='text1'>일반 텍스트에 이벤트 연결</p>
	<p id='text2'>이벤트 강제발생</p>
	<p id='text3'>3초뒤 이벤트 강제발생</p>
	<p>
		<input type="button" value="버튼" class="bts" data="1">
		<input type="button" value="버튼" class="bts" data="2">
		<input type="button" value="버튼" class="bts" data="3">
		<input type="button" value="html()로 생성한 객체의 이벤트처리" id="bt4">
	</p>
	<div id="output"></div>
</body>
</html>