<%@page import="member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<MemberVO> memList = (List<MemberVO>) request.getAttribute("memList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<table border="1">
			<%
			int memSize = memList.size();
			if (memSize > 0) {
				for (int i = 0; i < memSize; i++) {
			%>
			<tr>
				<td><%=memList.get(i).getMemNick()%></td>
			</tr>
			<%
				}
			}
			%>
		</table>
	</div>
</body>
</html>