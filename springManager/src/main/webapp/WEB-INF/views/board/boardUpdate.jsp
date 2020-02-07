<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">

</head>
<body>
	<div class="divCenter">
		<form action="boardUpdate" method="post" onsubmit="return submit()">
			<h2>글 수정</h2>
			<table class="set_table">
				<tr>
					<td class="td1">제목</td>
					<td class="td2" width="500">
						<input id="title" name="title" style="width: 97%"
							value="${vo.title}">
					</td>
				</tr>
				<tr>
					<td class="td1">내용</td>
					<td class="td2 " height="300">
						<input id="contents" name="contents" class="contents"
							value="${vo.contents}">
					</td>
				</tr>
				<tr>
					<td class="td1">파일첨부</td>
					<td class="td2">
						<input type="button" value="파일 선택">
					</td>
				</tr>
			</table>
			<input type="submit" value="수정">
			<input type="hidden" id="id" name="id" value="${vo.id }">
			<input type="hidden" id="boardnum" name="boardnum" value="${vo.boardnum }">
		</form>
	</div>
	<script type="text/javascript">
		function submit() {

			return true
		}
	</script>
</body>
</html>