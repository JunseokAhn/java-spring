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
	person : ${person} list : ${list}
	<hr>
	<div
		style="position: fixed; left: 200px; width: 400px; border: 1px solid black; border-radius:20px; background-image: url(resources/image/back.png); background-color: #fbf9cc;">
		<marquee>
			이름 : ${person.name }
			<br>
			나이 : ${person.age }
			<br>
			주소 : ${person.address }
			<table border=1 style="background-color: white;">
				<tr>
					<td>이름</td>
					<td>나이</td>
					<td>주소</td>
				</tr>
				<%-- <c:forEach var="i" begin="0" end="${list.size()-1 }">
			<tr>
			<td>${list[i].name }</td>
			<td>${list[i].age }</td>
			<td>${list[i].address }</td>
			</tr>
			</c:forEach> --%>
				<c:forEach var="i" items="${list}">
					<tr>
						<td>${i.name }</td>
						<td>${i.age }</td>
						<td>${i.address }</td>
					</tr>
				</c:forEach>
			</table>
		</marquee>
	</div>
	<script type="text/javascript">
		
	</script>
</body>
</html>