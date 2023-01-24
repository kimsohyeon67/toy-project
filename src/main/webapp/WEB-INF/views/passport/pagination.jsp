<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<script>
  $(document).ready(function () {
    $('.step1').show();
    $('.step2').hide();
    $('.step3').hide();

    let page = 1;
    let max = 5;
    $('#left_pagination').click(function () {

      if (page <= 1) {
        page = 1
        return;
      }

      if (page > 3) {
        page--;
      } else {
        $(`.step\${page}`).hide();
        $(`.step\${page-1}`).show();
        page--;
      }
      console.log(page);
    })

    $('#right_pagination').click(function () {
      if (page >= max) {
        page = max;
        return;
      }
      if (page > 2) {
        page++;
      } else {
        $(`.step\${page}`).hide();
        $(`.step\${page+1}`).show();
        page++;
      }
      console.log(page);
    })

  });
</script>
<div class="bottom-pagination">
    <button id="left_pagination"><img src="/images/left_btn.png"></button>
    <div id="number"></div>
    <button id="right_pagination"><img src="/images/right_btn.png"></button>
</div>
