<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post">
		<input type="text" id="doubleCheck" name="doubleCheck"
			placeholder="ID�� �Է��ϼ���">
		<input type="submit" value="�ߺ��˻�">
		<hr>
		<c:if test="${requestScope.result.equals('null')}">
			${requestScope.id} �� ��밡���մϴ�.
				<input type="button" value="ID����ϱ�"	onclick="closing()">
		</c:if>
		<c:if test="${requestScope.result.equals('exist')}">
			${requestScope.id} �� ���Ұ����մϴ�.
		
		</c:if>
	</form>
	<form action="" method="post" id="hide">
		<input type="hidden" id="hidden">
	</form>
	<script type="text/javascript">
		function closing(){
			opener.document.getElementById('userId').value = '${requestScope.id}';
			this.close()
		}
	</script>
</body>
</html>