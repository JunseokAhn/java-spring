<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이트 프로필입력</title>
<style type="text/css">
.box {
	position: relative;
	width: 100px;
}
span{
	margin-right: 30px;
	width: :180px;
}
div {
	width: 80px;
}
input, select, button {
	vertical-align: middle
}
</style>
</head>
<body>
	<h1>프로필입력</h1>
	<hr>
	<form action="param2" method="post">
		<span>아이디</span>
		<input id="userID" name="userID" class="input1" type="text">
		@nate.com
		<input type="button" value="중복확인"
			style="color: white; background-color: red;">
		<br>
		<span>비밀번호</span>
		<input id="userPW" name="userPW" type="password">
		<br>
		<div>비밀번호 확인</div>
		<input id="userPW2" name="userPW2" type="password">
		<br>
		이름
		<input id="userName" name="userName" type="text">
		<br>
		이메일
		<input id=userEmail1 name="userEmail1" type="text">
		@
		<input id="userEmail2" name="userEmail2" type="text">
		<br>
		휴대폰 <select id="phone"><option value="82">Korea(82)</option>
			<option value="81">Japan</option></select>
		<br>
		성별
		<input name="gender" type="radio" checked="checked" value="남자">
		남자
		<input name="gender" type="radio" value="여자">
		여자
		<br>
		생년월일 <select id="year" name="year"><option>년도</option>
			<option value="2020">2020</option>
			<option value="2019">2019</option>
			<option value="2018">2018</option>
			<option value="2017">2017</option>
			<option value="2016">2016</option>
			<option value="2015">2015</option>
			<option value="2014">2014</option>
			<option value="2013">2013</option>
			<option value="2012">2012</option>
			<option value="2011">2011</option>
			<option value="2010">2010</option>
			<option value="2009">2009</option>
			<option value="2008">2008</option>
			<option value="2007">2007</option>
			<option value="2006">2006</option>
			<option value="2005">2005</option>
			<option value="2004">2004</option>
			<option value="2003">2003</option>
			<option value="2002">2002</option>
			<option value="2001">2001</option>
			<option value="1999">1999</option>
			<option value="1998">1998</option>
			<option value="1997">1997</option>
			<option value="1996">1996</option>
			<option value="1995">1995</option>
			<option value="1994">1994</option>
			<option value="1993">1993</option>
			<option value="1992">1992</option>
			<option value="1991">1991</option>
			<option value="1990">1990</option>
			<option value="1989">1989</option>
			<option value="1988">1988</option>
			<option value="1987">1987</option>
			<option value="1986">1986</option>
			<option value="1985">1985</option>
			<option value="1984">1984</option>
			<option value="1983">1983</option>
			<option value="1982">1982</option>
			<option value="1981">1981</option>
			<option value="1980">1980</option>
		</select>년 <select id="mon" name="mon"><option>월</option>
			<option value="01">01</option>
			<option value="02">02</option>
			<option value="03">03</option>
			<option value="04">04</option>
			<option value="05">05</option>
			<option value="06">06</option>
			<option value="07">07</option>
			<option value="08">08</option>
			<option value="09">09</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
		</select>월 <select id="day" name="day"><option>일</option>
			<option value="01">01</option>
			<option value="02">02</option>
			<option value="03">03</option>
			<option value="04">04</option>
			<option value="05">05</option>
			<option value="06">06</option>
			<option value="07">07</option>
			<option value="08">08</option>
			<option value="09">09</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
		</select>월
		<br>
		해외IP차단
		<input name="IP" type="radio" value="on" checked="checked">
		on
		<input name="IP" type="radio" value="off">
		off
		<br>
		<input type="submit" value="회원가입"
			style="color: white; background-color: red;">
		<input type="button" value="돌아가기"
			style="color: white; background-color: red;">
	</form>
</body>
</html>