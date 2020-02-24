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

		$('#div1').hide()

		$('#writing').on('click', function() {
			/* $('#div1').show()
			$('#writing').hide() */
		/* 	$('#div1').fadeIn()
			$('#writing').fadeOut() */
			$('#div1').slideDown()
			$('#writing').slideUp()
		})

		$('#canceling').on('click', function() {
			$('#div1').slideUp()
			$('#writing').slideDown()

		})
	})
</script>
</head>
<body>
	<div class="divIn" style="text-align: center;">
		<h1>게시판</h1>

		<table border="0" style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black; margin: 0 auto;">
			<tr>
				<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">번호</td>
				<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">내용</td>
				<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">작성자</td>
				<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">작성일</td>
			</tr>
			<tr>
				<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">1</td>
				<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">내용</td>
				<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">작성자</td>
				<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">작성일</td>
			</tr>
			<tr>
				<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">2</td>
				<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">내용</td>
				<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">작성자</td>
				<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">작성일</td>
			</tr>
			<tr>
				<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">3</td>
				<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">내용</td>
				<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">작성자</td>
				<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">작성일</td>
			</tr>

		</table>

		<hr>
		<input type="button" value="글쓰기" id="writing">
		<div id="div1">
			<h1>글 작성</h1>
			<table border="0" style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black; margin: 0 auto;">
				<tr>
					<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">내용</td>
					<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">
						<input>
					</td>
				</tr>
				<tr>
					<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">작성자</td>
					<td style="border-collapse: collapse; border-bottom: 1px solid black; border-top: 1px solid black;">
						<input>
					</td>
				</tr>
			</table>
			<input type="button" value="취소" id="canceling">
			<input type="button" value="작성완료" id="writing2">
		</div>
	</div>
</body>
</html>