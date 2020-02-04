<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${vo!=null}">
		<table border="1">
			<tr>
				<th>이름</th>
				<th>나이</th>
				<th>주소</th>
			</tr>
			<tr>
				<td>${vo.name }</td>
				<td>${vo.age }</td>
				<td>${vo.address }</td>
			</tr>
		</table>
	</c:if>
	<c:if test="${list!=null}">
		<table border="1">
			<tr>
				<th>이름</th>
				<th>나이</th>
				<th>주소</th>
			</tr>
			<c:forEach var="i" items="${list}">
				<tr>
					<td>${i.name }</td>
					<td>${i.age }</td>
					<td>${i.address }</td>
					<td><a href="delete?name=${i.name}">삭제</a></td>
					<td><input type="button" value="삭제버튼"
							onclick="deleting('${i.name}')"></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<script type="text/javascript">
	function deleting(name){
		location.href = 'deleting?name='+name;
	}
	</script>
</body>
</html>