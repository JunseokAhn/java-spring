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
	num = ${num}
	<br>
	num = ${num+1}
	<br>
	num = ${num>50}
	<br>
	str = ${str }
	<br>
	slist = ${slist } data = ${data==null}
	<hr>
	<p>* set, remove태그</p>
	<c:set var="n" value="55" />
	<p>n=${n}</p>
	<c:remove var="n" />
	<p>n=${n }</p>
	<c:if test="${num==100 }">
		<p>num은 100이다
	</c:if>
	<c:if test="${str.equals('문자열') }">str은 문자열이다</c:if>
	<c:if test="${data==null }">data는 null이다</c:if>
	<p>* choose태그</p>
	<c:choose>
		<c:when test="${num==99 }">num은 99다</c:when>
		<c:when test="${num==101 }">num은 101이다</c:when>
		<c:otherwise>
			<p>num의 값은 그밖의 수이다</p>
		</c:otherwise>
	</c:choose>
	<hr>
	<p>* forEach태그</p>
	<c:forEach var="cnt" begin="1" end="5">
	반복 ${cnt }
	</c:forEach>
	<c:forEach var="i" items="${ slist}">
		e1 =${i}
	</c:forEach>${e1}
	<table border="1">
		<tr>
			<td><c:forEach var="i" begin="0" end="${slist.size()-1 }">
		${slist[i]}
	</c:forEach></td>
		</tr>
	</table>
	<br>
	<table border="1">
		<c:forEach var="i" begin="0" end="${slist.size()-1 }">
			<tr>
				<td>${slist[i]}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<table border="1">
		<tr>
			<c:forEach var="i" begin="0" end="${slist.size()-1 }">
				<td>${slist[i]}</td>
			</c:forEach>
		</tr>
	</table>
	<br>
	<c:forEach var="i" begin="0" end="${slist.size()-1 }">
		<table border="1">
			<tr>
				<td>${slist[i]}</td>
			</tr>
		</table>
	</c:forEach>
	<hr>
	<p>* out태그</p>
	${tag }
	<c:out value="${tag }"></c:out>
	<hr>
	<p>* url태그</p>
	<p>
		<img alt="" src="resources/Malphite.png">
	</p>
	<p>
		<img alt="" src="/resources/Malphite.png">
	</p>
	<p>
		<img alt="" src="/web2/resources/Malphite.png">
	</p>
	<p>
		<img alt=""
			src="<c:url value="/resources/Malphite.png"></c:url>">
	</p>
</body>
</html>