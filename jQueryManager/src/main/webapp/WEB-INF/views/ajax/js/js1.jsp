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
<p><a href="js2">js2보기</a></p>
<p><a href="javascript:test1()">js2보기</a></p>
<p><a href="js2">js2보기</a></p>
</body>
<script type="text/javascript">
function test1(){
	alert(location.href);
	location.href = 'js2'
}
</script>
</html>