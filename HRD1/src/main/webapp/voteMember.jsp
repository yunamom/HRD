<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>voteMember</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%@ include file="topmenu.jsp" %>
<section>
<h2>∙ 투표하기 ∙</h2>
<form name="frm" method="post" action="vote.do">
<div class="table">
	<table>
		<tr>
			<th>주민번호</th>
			<td>
			<input type="text" name="v_jumin" maxlength="13" > 예 : 8906153154726
			</td>
		</tr>
		<tr>
			<th>성명</th>
			<td>
			<input type="text" name="v_name">
			</td>
		</tr>
		<tr>
			<th>투표번호</th>
			<td>
			<select name="m_no">
				<option></option>
				<option value="1">[1]김후보</option>
				<option value="2">[2]이후보</option>
				<option value="3">[3]박후보</option>
				<option value="4">[4]조후보</option>
				<option value="5">[5]최후보</option>
			</select>		
			</td>
		</tr>
		<tr>
			<th>투표시간</th>
			<td>
			<input type="text" name="v_time" placeholder="예)0930" maxlength="4">
			</td>
		</tr>
		<tr>
			<th>투표장소</th>
			<td>
			<input type="text" name="v_area" placeholder="예)제1투표장">
			</td>
		</tr>
		<tr>
			<th>유권자확인</th>
			<td>
			<input style="float:none;" type="radio" name="v_confirm" value="Y">확인 
			<input style="float:none;" type="radio" name="v_confirm" value="N">미확인
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center">
			<button class="btn" type="submit" onclick="fn_submit();return false;">투표하기</button>
			<button class="btn" type="button" onclick="fn_reset()">다시하기</button>
			</td>
		</tr>
	</table>
</div>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
<script src="script.js"></script>
</html>