<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>티켓 만들기</title>
    <link href="css/ticket_design.css" rel="stylesheet" type='text/css'>
    <script src="js/jquery-3.6.1.min.js"></script>
</head>
<body>
<div style="text-align: center;">
    <div id="title">티켓 디자인을 골라보세요!</div>
    <div id="">
        <div id="ticket_selected">
            <img src="" alt="없음" id="ticket" width="400px">
        </div>
    </div>
    <br>
    <div id="ticket_list">
        <button type="button" class="btn" id="img_btn1"><img src="/images/ticket/01_00.jpg"
                                                             width="100px"></button>
        <button type="button" class="btn" id="img_btn2"><img src="/images/ticket/02_00.jpg"
                                                             width="100px"></button>
        <button type="button" class="btn" id="img_btn3"><img src="/images/ticket/03_00.jpg"
                                                             width="100px"></button>
        <button type="button" class="btn" id="img_btn4"><img src="/images/ticket/04_00.jpg"
                                                             width="100px"></button>
    </div>
</div>

<script type="text/javascript">
  $(document).ready(function () {
    $(function () {
      $("#ticket_selected").hide();
      $(".btn").click(function () {
        $("#ticket_selected").show();
      });
      $("#img_btn1").click(function () {
        $("#ticket").attr("src", "/images/ticket/01_00.jpg");
      });
      $("#img_btn2").click(function () {
        $("#ticket").attr("src", "/images/ticket/02_00.jpg");
      });
      $("#img_btn3").click(function () {
        $("#ticket").attr("src", "/images/ticket/03_00.jpg");
      });
      $("#img_btn4").click(function () {
        $("#ticket").attr("src", "/images/ticket/04_00.jpg");
      });
    });
  });
</script>

</body>
</html>