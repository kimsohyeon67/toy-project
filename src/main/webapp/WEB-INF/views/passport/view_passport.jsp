<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link href="../../css/view_passport.css" rel="stylesheet" type='text/css'>
    <script src="../../js/jquery-3.6.0.min.js"></script>
    <script src="../../js/view_passport.js"></script>
    <script>
      $(document).ready(function () {
        $('#passport-modify-btn').click(function () {
          location.href = "/passport?passport_num=1";
        })
      })
    </script>
    <meta charset="UTF-8">
    <title>여권보기</title>
</head>
<body>
<div class="top-nav">
    <button id="back_btn"><img src="/images/left_btn.png"></button>
</div>
<div class="title">내 여권</div>
<!-- 1. 여권 색상과 아이콘 고르기 -->
<div class="step1">
    <div id="cover-view">
        <div id="passport-cover" class=<%= case_color[passport_dto.getCase_color() - 1]%>>
            <img src=<%=path +"/"+ icon[passport_dto.getIcon() -1 ] + ".png"%>>
        </div>
    </div>
</div>
<!-- 2. 사용자 정보 입력 -->
<div class="step2">
    <form action="/passport" method="post">
        <div id="user-info" class="flex-col-box">
            <img src="/images/passport/passport_deco.png">
            <div class="flex-row-box">
                <div id="face-box">
                    <div id="face-info">
                        <img src="/images/passport/face/body2.png" id="body-img">
                        <img src="/images/passport/face/face1.png" id="face-img">
                    </div>
                </div>
                <div id="text-info-box">
                    <label for="nickname">NickName</label>
                    <div name="nickname" class="passport-info"
                         id="nickname">${passport_dto.nickname}</div>
                    <label for="mbti">MBTI</label>
                    <div name="mbti" class="passport-info" id="mbti">${passport_dto.mbti}</div>
                    <label for="gender">Gender</label>
                    <div name="gender" class="passport-info"
                         id="gender">${passport_dto.gender}</div>
                    <label for="self_intro">Self Introduce</label>
                    <div name="self_intro" class="passport-info"
                         id="self_intro">${passport_dto.self_intro}</div>
                </div>
            </div>
        </div>
    </form>
</div>

<div class="step3">
    <div id="passport-ticket" class="flex-col-box">
        <img src="/images/passport/passport_deco.png">
        <div class="flex-row-box">
        </div>
    </div>
</div>
</div>
<%@include file="pagination.jsp" %>
</body>
</html>