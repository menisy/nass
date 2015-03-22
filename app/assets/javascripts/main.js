$(document).ready(function() {
  var colors, nav_li, reversed_colors, theLoc, ul;
  $('.right, .left').addClass('col-md-6');
  $('.navbar .active > a').css('background-color', 'inherit');
  $(".navbar #menu ul").addClass("nav navbar-nav");
  $("#left_side_body, #right_side_body").addClass("col-md-2");
  $("#body").addClass("col-md-9");
  if ($('.alert-success').length > 0) {
    $('.alert-success').delay(8000).fadeOut(800);
  }
  if ($('.sii').text().trim() === 'true') {
    $("li:contains('Registration')").hide();
  }
  $('input[type="radio"]').on('click', function() {
    var selected, selectedVal;
    selectedVal = "";
    selected = $(".sign-in-type input[type='radio']:checked");
    if (selected.length > 0) {
      selectedVal = selected.val();
      $('#sign-in-form').html($('#' + selectedVal + '-form').html());
    }
  });
  $('#body_content').append($('#search-form').remove());
  $('#right_side_body').append($('#side_body').html());
  $('ul.nav.navbar-nav').children('li').addClass('nav-li');
  nav_li = $("ul.navbar-nav li.nav-li");
  colors = ["green", "yello", "orange", "red", "blue", "lime", "purple"];
  reversed_colors = colors.slice(0).reverse();
  nav_li.each(function(i, j) {
    $(j).addClass(colors[i % colors.length]);
    $(j).find('li').each(function(l, k) {
      $(k).addClass(reversed_colors[(l+i+2) % colors.length]);
    });
  });
  ul = $("#left_side_body ul");
  theLoc = 275;
  $(".owl-carousel").owlCarousel({
    items: 1,
    slideSpeed: 200,
    autoPlay: true
  });
  $("#left_side_body ul li").html(function(i, h) {
    h.replace(/&nbsp;/g, "");
  });
  $("#left_side_body ul li br").remove();
  $('li').click(function() {});
  $(".navbar-nav>li").hover((function() {
    $(this).find(".dropdown-menu").show();
  }), function() {
    $(this).find(".dropdown-menu").fadeOut(100);
  });


  var lcl = $('.current_lcl').html().trim();
  if(lcl == 'ar'){
    window.ParsleyValidator.setLocale('ar');
  }else{
    window.ParsleyValidator.setLocale('en');
  }
  if($('form.emp_reg').length > 0){
    $('form.emp_reg').parsley();
  }
  if($('form.student_reg').length > 0){
    $('form.student_reg').parsley();
  }

});

$(window).resize(function() {
  window.scrollTo(0, 0);
});

$(window).load(function() {
  $('#side_body').remove;
});
