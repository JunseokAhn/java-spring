<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value="/resources/js/jquery-3.4.1.js/"/>"></script>
<title>Home</title>

</head>
<body>
	<h1>Sample</h1>

	<p id="blueText">blueText id p tag</p>
	<p class="redText">redText class p tag</p>
	<p id='blueText2'>blueText2 id p tag</p>
	<div class="redText">
		redText class div tag
		<p id="blueText3">blueText id p tag in div</p>
		<p class="redText">redText class p tag in div</p>
		<p id='blueText4'>blueText2 id p tag in div</p>
		<p>no class p tag in div</p>
	</div>
	<form action="">
		ID
		<input>
		PW
		<input type="password">
		<input type="submit" value="login">
		<br>
		<img alt="" src="<c:url value="/resources/img/default.png"/>">

	</form>
	<script type="text/javascript">
		$(document).ready(function() {
			console.log('ready');
			$('p').css('color', '#ff00ff');
			$('h1').css('color', 'green');

			$('.redText').css('color', 'red');
			/* $('#blueText').css('color', 'blue'); */
			$('div>p').css('color', 'yellow');
			$('p.redText').css('color', 'black');
			$('p#blueText2').css('color', 'blue');
			$('div').css('color', 'yellow');
			$('form>input[type="password"]').css('background-color', 'blue');
			$('img[src="<c:url value="/resources/img/default.png"/>"]').css('border', '3px solid grey');
		})
	</script>
</body>
</html>