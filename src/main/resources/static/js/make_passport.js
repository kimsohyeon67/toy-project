/**
 *
 */
$(document).ready(function () {
  /*
   $('.step1').hide();
  $('.step2').hide();
  $('.step3').show(); */
  $(function () {
    $('ul.tab li').click(function () {
      var activeTab = $(this).attr('data-tab');
      $('ul.tab li').removeClass('on');
      $('.tabcont').removeClass('on');
      $(this).addClass('on');
      $('#' + activeTab).addClass('on');
    })
  });

  $(function () {
    $('.step3 ul.tab2 li').click(function () {
      var activeTab = $(this).attr('data-tab');
      $('.step3 ul.tab2 li').removeClass('on');
      $('.step3 .tabcont2').removeClass('on');
      $(this).addClass('on');
      $('.step3 #' + activeTab).addClass('on');
    })
  });

  $(function () {
    $('.circle').click(function () {
      var color = $(this).attr('class').split(' ')[1];
      var passport_color = $('#passport-cover').attr('class');
      var color_num = 1;
      $('#passport-cover').removeClass(passport_color);
      $('#passport-cover').addClass(color);
      if (color == 'green') {
        $('#user-info').css('border-color', '#1a2e18');
        num = 1;
      } else if (color == 'black') {
        $('#user-info').css('border-color', '#191919');
        num = 2;
      } else if (color == 'navy') {
        $('#user-info').css('border-color', '#1b2e6b');
        num = 3;
      } else {
        $('#user-info').css('border-color', '#740f14');
        num = 4;
      }
      $('#case_color').val(num);
    })
  });

  $(function () {
    $('.step1 #menu2 img').click(function () {
      var path = $(this).attr('src');
      $('#passport-cover img').attr('src', path);
      var icon = path.split('/').reverse()[0];
      var icon_num = 1;
      if (icon.includes('cat')) {
        icon_num = 3;
      } else if (icon.includes('dog')) {
        icon_num = 4;
      } else if (icon.includes('ghost')) {
        icon_num = 5;
      } else if (icon.includes('jelly')) {
        icon_num = 2;
      } else {
        icon_num = 1;
      }
      $('#icon').val(icon_num);
    })
  });

  $(function () {
    $('#go_step2').click(function () {
      $('.step1').hide();
      $('.step2').show();
    })
  });

  $(function () {
    $('#back_step2').click(function () {
      $('.step3').hide();
      $('.step2').show();
    })
  });

  $(function () {
    $('#face-info').click(function () {
      $('.step2').hide();
      $('.step3').show();
    })
  });

  $(function () {
    $('#menu1-1 .croping img').click(function () {
      var path = $(this).attr('src');
      $('.step3 #body-img').attr('src', path);
      $('.step2 #face-info #body-img').attr('src', path);

      var body_num = path.split('/').reverse()[0].split('.')[0].substring(4);
      $('#hidden_body').val(body_num);
    })

    $('#menu2-1 img').click(function () {
      var path = $(this).attr('src');
      $('.step3 #face-img').attr('src', path);
      $('.step2 #face-info #face-img').attr('src', path);
      var face_num = path.split('/').reverse()[0].split('.')[0].substring(4);
      $('#hidden_face').val(face_num);
    })
  });

  let count = 1;
  let page = 3;
  $(function () {
    $('#right').click(function () {
      var temp = count % page;
      if (temp == 0) {
        $('.step3 #page1').show();
        $('.step3 #page2').hide();
        $('.step3 #page3').hide();
      } else if (temp == 1) {
        $('.step3 #page2').show();
        $('.step3 #page1').hide();
        $('.step3 #page3').hide();
      } else if (temp == 2) {
        $('.step3 #page3').show();
        $('.step3 #page2').hide();
        $('.step3 #page1').hide();
      }
      count += 1;
      if (count == 3) {
        count = 0;
      }
    })
  });
});
