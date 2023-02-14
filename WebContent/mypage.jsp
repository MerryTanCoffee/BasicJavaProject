<%@page import="member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   	<%
   		String memMbti = (String)request.getAttribute("memMbti");
   	   
   		
   	String updateCode =	(String)request.getAttribute("updateCode");
   	String pwUpdateCode = (String)request.getAttribute("pwUpdateCode");
   	
   	
   	
   	
   	
   	
   	if(pwUpdateCode!=null){
   	if(pwUpdateCode.equals("yes")){
   		%>
   	<script>
	alert('비밀번호변경성공!');
	</script>
	<%
   		
   		
   		
   	}
   	}
   	
   	
   	
   	if(updateCode!=null){
   	if(updateCode.equals("yes")){
   	
   	
   	
   	%>
    
    <script>
   
    alert('회원정보 업데이트 성공!');
    
	</script>
    <% } }
    request.removeAttribute("updateCode");
    %>
    
	
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!---<title> Responsive Our Team Section | CodingLab </title>---->
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/sidemain.css">
    <jsp:include page="/sidemain.jsp"></jsp:include>
    <jsp:include page="/topbar.jsp"></jsp:include>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
     	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
     
     <style>
     @font-face { /* 애플산돌고딕 폰트 적용 */
  font-family:"jua";
  src: url("css/fonts/BMJUA_ttf.ttf") format("truetype");
  font-weight: normal;
	} /* 이후 "SDGothic"으로 폰트 적용 가능 */
     
     *{
     font-family: jua;
     }
     
     td{
     width: 400px;
     height: 400px;
     }
     
     .card-text{
     height: 50px;
     }
     table{
     	margin-top: 150px;
     }
     
     </style>
     
     	
   </head>
<body>
	
  <table>
        <tr>
    <td>
    <div class="card" style="width: 16rem; ">
        <img src="img/register.png" class="card-img-top" alt="register" height="200px" width="100px">
        <div class="card-body">
          <h5 class="card-title">회원정보 등록</h5>
          <p class="card-text">블루밍을 이용하기위해 먼저 회원정보와 프로필사진을 등록해보세요</p>
          <% if(memMbti==null) { %>
          <a href="MypageInsert" class="btn btn-primary">회원정보등록하기</a>
          <% } else { %>
          <h5 class="card-title">회원정보 등록완료</h5>
          <%} %>
          
        </div>
    </div>
    </td>
    <td>
    <div class="card" style="width: 16rem; ">
        <img src="img/revision.png" class="card-img-top" alt="..." height="170px" width="90px">
        <div class="card-body">
          <h5 class="card-title">회원정보 수정</h5>
          <p class="card-text" >회원정보 수정</p>
          <% if(memMbti!=null) { %>
          <a href="MypageUpdate" class="btn btn-primary">회원정보수정하기</a>
          <% } else { %>
          <h5 class="card-title">회원정보 등록필요</h5>
          <%} %>
        </div>
    </div>
</td>
<td>
    <div class="card" style="width: 16rem; ">
        <img src="img/corkboard.png" class="card-img-top" alt="..." height="180px">
        <div class="card-body">
          <h5 class="card-title">내가쓴 게시물</h5>
          <p class="card-text">내가 쓴 게시물 조회하기</p>
          <a href="MypageBoard" class="btn btn-primary">내가쓴 게시물</a>
        </div>
    </div>
</td>
</tr>
<tr>
    <td>
    <div class="card" style="width: 16rem; ">
        <img src="img/password.png" class="card-img-top" alt="..." height="170px">
        <div class="card-body">
          <h5 class="card-title">비밀번호 변경</h5>
          <p class="card-text">비밀번호 변경</p>
          <a href="MypagePwUpdate" class="btn btn-primary">비밀번호 변경</a>
        </div>
    </div>
    </td>
    <td>
    <div class="card" style="width: 16rem; ">
        <img src="img/email2.png"  style="height: 153px;" class="card-img-top" alt="..." height="170px">
        <div class="card-body">
          <h5 class="card-title">받은쪽지함</h5>
          <p class="card-text">받은쪽지함</p>
          <a href="message/list.do" class="btn btn-primary">받은쪽지함</a>
        </div>
    </div>
</td>

<td>
    <div class="card" style="width: 16rem; ">
        <img src="img/good-bye.png" style="height: 153px;" class="card-img-top" alt="..." height="180px">
        <div class="card-body">
          <h5 class="card-title">회원 탈퇴</h5>
          <p class="card-text">회원 탈퇴</p>
          <a href="MypageDelete" class="btn btn-primary">회원 탈퇴</a>
        </div>
    </div>
</td>
</tr>
</table>
</body>
</html>