<%@page import="message.vo.MessageVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   List<MessageVO> msgList = (List<MessageVO>) request.getAttribute("msgList");

   String memNick = (String) session.getAttribute("memNick");
   //String loginCode = session.getAttribute("logincode") == null ? "" : (String) session.getAttribute("loginCode");
   
//    session.removeAttribute("msg");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<style>
table {
	border-collapse:collapse;
	border-left: 0px;
	border-right: 0px;
}
table th{
	background-color: #edecf58f;
	font-size:20px; 
/* 	width:40%;  */
	height:70px;
	border-right:0px;
	border-left:0px;
}
table td{
	font-size:15px; 
	height:65px; 
	border-top:0px;
	border-right:0px;
	border-left:0px;
}
.b1{
	margin-right:10px;
	border: 0px;
	border-radius:8px;
	background-color: #d5d1f18f;
	height: 40px;
	width: 90px;
}
.b2{
	border: 0px;
	border-radius:8px;
	background-color: #d5d1f18f;
	height: 40px;
	width: 70px;
}
</style>
<jsp:include page="/sidemain.jsp"></jsp:include>
<jsp:include page="/view/topbar.jsp"></jsp:include>
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<link rel="stylesheet" href="../css/sidemain.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/topbar.css">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>받은 쪽지함</title>
<link rel="stylesheet" href="../css/css.css">
</head>
<body>
<section style="width:60%; margin-top:10%">
	
   <div>
<!--    <div class="board_wrap"> -->
      <div class="board_title" font-size="10px">
      <img alt="message" src="../img/email2.png" width="150px" style="margin-bottom:50px"><br>
         <strong>받은 쪽지함 </strong>
      </div>
      
      <div class="board_list_wrap">
<!--          <div class="board_list"> -->
<table border="1" margin="auto" >
            <tr class="top" >
               <th class="">순번</th>
               <th class="" width=40%>내용</th>
               <th class="date" >보낸날짜</th>
               <th class="write">발신자</th>
               <th class="choose">선택</th>
            </tr>
               
<!--          </div> -->
<!--       </div> -->
      <%
      	 int count = 0;	
         int messageSize = msgList.size();
      if (messageSize > 0) {
         for (int i = 0; i < messageSize; i++) {
        	 count++;
      %>

      
<!--       <div class="board_list"> -->
         <tr style="text-align:center">
            <input type="hidden" class="msgNo" value="<%=msgList.get(i).getMsgNo()%>">
            <td ><%=count%></td>
            <td ><%=msgList.get(i).getMsgCon()%></td>
            <td >
               <fmt:formatDate value="<%=msgList.get(i).getMsgDate()%>"
                  pattern="yyyy-MM-dd" type="date" />
            </td>
            <td> <%=msgList.get(i).getMemNick()%></td>
<%--             <div><%=msgList.get(i).getMemId()%></div> --%>
            <td>
               <a href="<%=request.getContextPath()%>/chatdetail?msgNo=<%=msgList.get(i).getMsgNo()%>"  onClick="window.open(this.href, '', 'width=730, height=600'); return false;"><button class="b1">채팅하기</button></a> 
               <a
                  href="<%=request.getContextPath()%>/message/Senddelete.do?msgNo=<%=msgList.get(i).getMsgNo()%>"><button class="b2">삭제</button></a>
            </td>
         </tr>
      
      
      <%
         }
      } else {
      %>
      	<tr>
			<td colspan="5">받은 쪽지가 없습니다.</td>
		</tr>
      <%
         }
      %>
</table>
</section>
      <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
      <script src="js/bototstrap.js"></script>
</body>
</html>