<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>✈️여권만들기</title>
 <link href="css/make_passport.css" rel="stylesheet" type='text/css'>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/make_passport.js"></script>


</head>
<body>
	<div class="top-nav"><button id="back_btn"><img src="/images/left_btn.png"></button></div>
	<div class="title">나만의 여권을 만들어 보세요!</div>
	
	<!-- 1. 여권 색상과 아이콘 고르기 -->
	<div class="step1">
		<div id="cover-view">
			<div id="passport-cover" class="green">
				<img src="/images/passport/globe.png">
			</div>
		</div>
		<div id="select-type">
			<div id="container">
				<ul class="tab">
					<li class="on" data-tab="menu1"><a href="#">색상</a></li>
					<li data-tab="menu2"><a href="#">아이콘</a></li>
				</ul>
				<div id="menu1" class="tabcont on">
					<div class="circle green"></div>
					<div class="circle navy"></div>
					<div class="circle black"></div>
					<div class="circle red"></div>
				</div>
				<div id="menu2" class="tabcont">
					<img src="/images/passport/globe.png"> <img
						src="/images/passport/jelly.png"> <img
						src="/images/passport/cat.png"> <img
						src="/images/passport/dog.png"> <img
						src="/images/passport/ghost.png">
				</div>
			</div>
			<!--  -->
		</div>
		<div class="next-btn">
			<button id="go_step2">다음으로</button>
		</div>
	</div>
	
	<!-- 2. 사용자 정보 입력 -->
	<div class="step2">
			<form action="/make" method="post">
		<div id="user-info" class="flex-col-box">
			<img src="/images/passport/passport_deco.png">
			<div class="flex-row-box">
			<div id="face-box">
				<div id="face-info">
					<img src="/images/passport/face/body2.png" id="body-img">
					<img src="/images/passport/face/face1.png" id="face-img">
				</div>
				<p>캐릭터를 꾸며보세요!</p>
			</div>
			<div id="text-info-box">
			<label for="nickname">NickName</label>
			<input type="text" placeholder="닉네임을 입력해보세요!" name="nickname" id="nickname" maxlength="10"> 
			<label for="mbti">MBTI</label>
			<input type="text" placeholder="mbit를 입력해보세요!" name="mbti" id="mbti" maxlength="4"> 
			<label for="gender">Gender</label>
			<select name="gender" id="gender">
				<option value="M">M</option>
				<option value="F">F</option>
			</select> 
			<label for="self_intro">Self Introduce</label>
			 <input type="text" placeholder="나를 소개해보세요!" name="self_intro" id="self_intro" maxlength="20">
			<input type="hidden" name="case_color" id="case_color" value="1">
			<input type="hidden" name="icon" id="icon" value="1">
			<input type="hidden" name="hair" id="hidden_body" value="1">
			<input type="hidden" name="face" id="hidden_face" value="1">
			</div>
			</div>
		<div class="next-btn">
			<input type="submit" value="여권 만들기">
		</div>
		</div>
			</form>
	</div>
	<!-- 2-1. 헤어와 표정 고르기 -->
	<div class="step3 flex-col-box">
		<div id="face-view">
			<img src="/images/passport/face/body2.png" id="body-img">
			<img src="/images/passport/face/face1.png" id="face-img">
		</div>
		<div id="face-select">
			<div id="container">
				<ul class="tab2">
					<li class="on" data-tab="menu1-1"><a href="#">헤어</a></li>
					<li data-tab="menu2-1"><a href="#">표정</a></li>
				</ul>
				<div id="menu1-1" class="tabcont2 on flex-row-box">
					<div id="page1">
					<div class="croping"><img src="/images/passport/face/body2.png"></div>
					<div class="croping"><img src="/images/passport/face/body3.png"> </div>
					<div class="croping"><img src="/images/passport/face/body4.png"> </div>
					<div class="croping"><img src="/images/passport/face/body5.png"> </div>
					<div class="croping"><img src="/images/passport/face/body6.png"></div>
					</div>
					<div id="page2">
					<div class="croping"><img src="/images/passport/face/body7.png"></div>
					<div class="croping"><img src="/images/passport/face/body8.png"></div>
					<div class="croping"><img src="/images/passport/face/body9.png"></div>
					<div class="croping"><img src="/images/passport/face/body10.png"></div>
					<div class="croping"><img src="/images/passport/face/body11.png"></div>
					</div>
					<div id="page3">
					<div class="croping"><img src="/images/passport/face/body12.png"></div>
					</div>
					<div id="rigth-btn-box">
						 <button id="right"><img src="/images/right_btn.png"></button>
					</div>
				</div>
				<div id="menu2-1" class="tabcont2">
					<img src="/images/passport/face/face1.png"> 
					<img src="/images/passport/face/face2.png"> 
					<img src="/images/passport/face/face3.png"> 
					<img src="/images/passport/face/face4.png"> 
					<img src="/images/passport/face/face5.png">
				</div>
			<!--  -->
		</div>
		</div>
		<div class="next-btn">
			<button id="back_step2">다음으로</button>
		</div>
	</div>
</body>
</html>