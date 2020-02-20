<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value="/resources/js/jquery-3.4.1.js/"/>"></script>
<script type="text/javascript">
	$(document).ready(function() {
		alert('ready');
		var ar1 = [ 55, 30, 78 ];
		var ar2 = [ 'aaa', 'bbb', 'ccc', 'ddd' ];
		var ar3 = [ {
			name : 'abc',
			age : 20
		}, {
			name : 'def',
			age : 30
		} ];
		var ar4 = [];

		ar4.push(100, 200);

		$.each(ar1, function(i, j) {
			console.log('i = ' + i + ' num = ' + j);
		})

		$.each(ar3, function(index, item) {
			console.log(item)
		})

		$('p').each(function(i, tag) {
			console.log(tag)
		})

		$('p').each(function(i, tag) {
			console.log(tag)
		})
		$('p').each(function(i, tag) {
			console.log($(tag).text())
		})
	})
</script>
<title>Home</title>
</head>
<body>
	<h1>jq2</h1>
	<p>문장1</p>
	<p>문장2</p>
	<p>문장3</p>

</body>
</html>