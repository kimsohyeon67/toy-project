<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="../../js/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
    $('#passport-modify-btn').click(function() {
                location.href= "/passport?passport_num=1";
    })
})
</script>
<meta charset="UTF-8">
<title>여권보기</title>
</head>
<body>
여권 보기
${passport_dto}
${passport_dto.nickname}
${passport_dto.gender}
 <input id="passport-modify-btn" type="button" value="여권 수정하기">
</body>

</html>