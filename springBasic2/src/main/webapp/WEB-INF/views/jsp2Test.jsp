<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/jsp2Test.css" rel="stylesheet">
</head>
<body>
<h1>리소스 사용</h1>
<p>이미지파일, CSS파일, JS파일 등은 /resources 폴더 하위에</p>
<img alt="" src="resources/image/Maokai.png">
<img alt="" src="http://localhost:8888/web2/resources/Malphite.png">
<input type="button" value="sourceTest!" onclick="sourceTest()">
<script src="resources/js/jsp2Test.js">

</script>
</body>
</html>