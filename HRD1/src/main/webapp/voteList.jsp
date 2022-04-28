<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="VoteBean.Vote" %>

<%
request.setCharacterEncoding("UTF-8");
//list 불러오기
ArrayList<Vote> list = new ArrayList<Vote>();
list = (ArrayList<Vote>)request.getAttribute("list");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>voteList</title>
</head>
<body>
<%@ include file="topmenu.jsp" %>
<section>
<h2>∙ 투표검수조회 ∙</h2>
<div class="table">
	<table style="width:700px;">
		<tr>
			<th>성명</th>
			<th>생년월일</th>
			<th>나이</th>
			<th>성별</th>
			<th>후보번호</th>
			<th>투표시간</th>
			<th>유권자확인</th>
		</tr>
		<%
		for(int i=0; i<list.size(); i++){
		%>
		<tr>
			<td><%=list.get(i).getV_name() %></td>
			<td><%=list.get(i).getV_jumin() %></td>
			<td><%=list.get(i).getV_age() %></td>
			<td><%=list.get(i).getV_gender() %></td>
			<td><%=list.get(i).getM_no() %></td>
			<td><%=list.get(i).getV_time() %></td>
			<td><%=list.get(i).getV_confirm() %></td>
		</tr>
		<%
		}
		%>
	</table>
</div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>