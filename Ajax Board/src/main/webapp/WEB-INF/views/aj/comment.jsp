<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>댓글 예제</title>

<style type="text/css">
td.tdNum {
	background-color: #dddddd;
	width: 30px;
	text-align: center;
}

td.tdName {
	background-color: #dddddd;
	width: 100px;
	text-align: center;
}

td.tdText {
	background-color: #dddddd;
	width: 400px;
	text-align: left;
}
</style>
<script src="../resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//작성하기 버튼에 onclick 이벤트로 formSubmit 함수를 연결
		$('#formButton').on('click', formSubmit);
		//페이지 로딩 시 모든 댓글을 읽어오는 함수
		init();
	});

	//입력한 내용 서버로 전송 
	function formSubmit() {
		//댓글 작성 폼에 입력한 이름과 내용을 읽어옴
		var name = $('#name').val();
		var text = $('#text').val();

		if (name.length == 0 || text.length == 0) {
			alert('이름과 내용을 입력하세요.');
			return;
		}

		//사용자가 입력한 내용을 서버로 전송.
		$.ajax({
			url : 'insert',
			type : 'POST',
			data : {
				name : name,
				text : text
			},
			success : function() {
				alert('작성되었습니다.');
				//폼 지우기
				$('#name').val('');
				$('#text').val('');
				//목록 갱신
				init();
			},
			error : function(e) {
				alert(JSON.stringify(e));
			}
		});
	}

	//페이지 로딩시 모든 댓글을 읽어옴. 통신에 성공하면 output 함수 실행
	function init() {
		$.ajax({
			url : 'list',
			type : 'GET',
			success : output
		});
	}

	//목록 출력
	function output(msg) {
		//서버로부터 받은 목록을 반복문으로 처리
		var str = '<table>';
		$.each(msg, function(key, item) {
			str += '<tr>';
			str += '<td class="tdNum">' + item.num + '</td>';
			str += '<td class="tdName">' + item.name + '</td>';
			str += '<td class="tdText">' + item.text + '</td>';
			//각 댓글마다 삭제 버튼을 만든다. 사용자 정의 속성 'data-num'에 삭제할 글 번호 대입
			str += '<td><input type="button" value="삭제" class="btnDel" data-num="'+ item.num +'"></td>';
			str += '</tr>';
		});
		str += '</table>';

		//목록 출력 영역에 내용 삽입
		$('#listDiv').html(str);

		//삭제 버튼들에 클릭이벤트 처리
		$('input:button.btnDel').on('click', commentDel);
	}

	//삭제 버튼 클릭했을 때 실행
	function commentDel() {
		//클릭한 버튼의 'data-num' 속성값을 읽음
		var num = $(this).attr('data-num');

		//서버로 삭제할 글번호를 전달.
		$.ajax({
			url : 'delete',
			type : 'POST',
			data : {
				num : num
			},
			success : function() {
				alert('삭제되었습니다.');
				init();
			}
		});
	}
</script>
</head>

<body>
	<h1>[ AJAX Test - 댓글 작성/삭제 ]</h1>

	<!-- 댓글 작성 폼 영역 -->
	<div id="formDiv">
		<form id="writeForm">
			이름 <input type="text" id="name" name="name" style="width: 100px;">
			내용 <input type="text" id="text" name="text" style="width: 300px;">
			<input type="button" id="formButton" value="작성하기">
		</form>
	</div>
	<br>
	<br>

	<!-- 목록 출력 영역 -->
	<div id="listDiv"></div>
</body>
</html>