<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="VoteBean.Member" %>

<%
request.setCharacterEncoding("UTF-8");
//list 불러오기
ArrayList<Member> list = new ArrayList<Member>();
list = (ArrayList<Member>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberList</title>
</head>
<body>
<%@ include file="topmenu.jsp" %>
<section>
<h2>∙ 후보조회 ∙</h2>
<div class="table">
	<table style="width:700px;">
		<tr>
			<th>후보번호</th>
			<th>성명</th>
			<th>소속정당</th>
			<th>학력</th>
			<th>주민번호</th>
			<th>지역구</th>
			<th>대표전화</th>
		</tr>
		<%
		for(int i=0; i<list.size(); i++){
		%>
		<tr>
			<td><%=list.get(i).getM_no()%></td>
			<td><%=list.get(i).getM_name()%></td>
			<td><%=list.get(i).getP_name()%></td>
			<td><%=list.get(i).getP_school()%></td>
			<td><%=list.get(i).getM_jumin()%></td>
			<td><%=list.get(i).getM_city()%></td>
			<td><%=list.get(i).getP_tel()%></td>
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