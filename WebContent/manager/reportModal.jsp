<%@page import="report.vo.ReportVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ReportVO rv = (ReportVO) request.getAttribute("rv");
String con = (String) request.getParameter("con");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table {
	width: 100%;
	text-align: center;
}

</style>
<body>
	<div>
		<table class="table1">
			<tr>
				<td><img alt="신고하기" src="../img/clipboard.png"
					style="width: 100px;"></td>

			</tr>
			<tr>
				<td style="font-size: 20px;">신고 내용 확인하기</td>
			</tr>
		</table>
		
		<div style="border:1px solid; margin:auto; margin-top:20px;  width:80%; height:300px;">
		<table style="margin:auto; margin-top:20px; width:70%;">
			<tr>
				<td>
					<%=con%>
				</td>
			</tr>

			<tr>
				<td></td>
			</tr>
		</table>
		</div>
	</div>
</body>
</html>