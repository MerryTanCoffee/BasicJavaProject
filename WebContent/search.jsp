<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="sidemain.jsp"></jsp:include>
<jsp:include page="topbar.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	
	
<style>

 @font-face { /* 애플산돌고딕 폰트 적용 */
  font-family:"jua";
  src: url("css/fonts/BMJUA_ttf.ttf") format("truetype");
  font-weight: normal;
	} /* 이후 "SDGothic"으로 폰트 적용 가능 */
	
	 a{
	 font-family: jua;
	 
	 }

</style>	
	
</head>
<body>



	<form action="searchmember" method="post" enctype="multipart/form-data"
		style="width: 60%;">
		<table style="width: 100%;">
			<tr>
				<td><label for="exampleFormControlInput1" class="form-label">성별</label>
					<select class="form-select form-select-sm mb-3" name="memSex"
					aria-label=".form-select-lg example">
						<option value="" selected>선택안함</option>
						<option value="남자">남자</option>
						<option value="여자">여자</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="exampleFormControlInput1" class="form-label">MBTI</label>
					<select class="form-select form-select-sm mb-3" name="memMbti"
					aria-label=".form-select-lg example">
						<option value="" selected>선택안함</option>
						<option value="ISFP">ISFP(성인군자형)</option>
						<option value="ISTP">ISTP(만능 재주꾼)</option>
						<option value="ISFJ">ISFJ(실용적인 조력가)</option>
						<option value="ISTJ">ISTJ(현실주의자)</option>
						<option value="INFJ">INFJ(예언자형)</option>
						<option value="INFP">INFP(중재자)</option>
						<option value="ISTJ">INTJ(과학자형)</option>
						<option value="ISTP">INTP(논리술사)</option>
						<option value="ESFP">ESFP(슈퍼스타형)</option>
						<option value="ESTP">ESTP(수완 좋은 활동가형)</option>
						<option value="ESFJ">ESFJ(친선도모형)</option>
						<option value="ESTJ">ESTJ(경영자)</option>
						<option value="ENFJ">ENFJ(언변능숙형)</option>
						<option value="ENFP">ENFP(스파크형)</option>
						<option value="ESTJ">ENTJ(타고난 리더)</option>
						<option value="ESTP">ENTP(발명가형)</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="exampleFormControlInput1" class="form-label">취미</label>
					<select class="form-select form-select-sm mb-3" name="memHobby"
					aria-label=".form-select-lg example">
						<option value="" selected>선택안함</option>
						<option value="스포츠">스포츠</option>
						<option value="독서">독서</option>
						<option value="음악">음악</option>
						<option value="요리">요리</option>
						<option value="헬스">헬스</option>
						<option value="영화">영화</option>
						<option value="쇼핑">쇼핑</option>
						<option value="애니메이션">애니메이션</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="exampleFormControlInput1" class="form-label">종교</label>
					<select class="form-select form-select-sm mb-3" name="memReligion"
					aria-label=".form-select-lg example">
						<option value="" selected>선택안함</option>
						<option value="불교">불교</option>
						<option value="기독교">기독교</option>
						<option value="힌두교">힌두교</option>
						<option value="이슬람">이슬람</option>
						<option value="유교">유교</option>
						<option value="무교">무교</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="exampleFormControlInput1" class="form-label">흡연</label>
					<select class="form-select form-select-sm mb-3" name="memSmoking"
					aria-label=".form-select-lg example">
						<option value="" selected>선택안함</option>
						<option value="흡연자">흡연자</option>
						<option value="비흡연자">비흡연자</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="exampleFormControlInput1" class="form-label">음주</label>
					<select class="form-select form-select-sm mb-3" name="memDrink"
					aria-label=".form-select-lg example">
						<option value="" selected>선택안함</option>
						<option value="음주">음주</option>
						<option value="비음주">비음주</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="exampleFormControlInput1" class="form-label">나이</label>
					<select class="form-select form-select-sm mb-3" name="memBirch"
					aria-label=".form-select-lg example">
						<option value="0" selected>선택안함</option>
						<option value="10">10대</option>
						<option value="20">20대</option>
						<option value="30">30대</option>
						<option value="40">40대</option>
						<option value="50">50대</option>
						<option value="60">60대</option>
						<option value="70">70대이상</option>
				</select></td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-primary">매칭</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>