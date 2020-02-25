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
		$('#bt1').on('click', call1);
		$('#bt2').on('click', call2)

	})
	function call2() {
		$.ajax({
			url : 'ajax2',
			dataType : 'text',
			type : 'POST',
			data : {str:'aaa', str2:'bbb'},
			success: function(res){
				console.log('success : '+res)
			},
			error: function(res){
				console.log('error : '+res)
			}
		})
	}

	function call1() {
		$.ajax({
			url : 'ajax2',
			type : 'GET',
			dataType : 'text',
			success : output1,
			error : error1
		})
		//ajax쓰면 그이후로는 실행이 안된다. success에 적어야됨
	}
	function output1() {
		console.log('seikou')
	}
	function error1(e) {
		console.log('sippai')
		console.log(e)
		alert(e)
		alert(JSON.stringify(e))
	}
</script>
</head>
<body>
	<h1>Ajax1</h1>
	<input type="button" id="bt1" value="서버로 요청 보내기">
	<input type="button" id="bt2" value="서버로 문자열 보내고받기">
</body>
</html>