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
    $("li:contains('Registration')").remove();
  }
  if ($('.employer_sign_in').data('signed') == '0'){
    $("li:contains('Candidates')").remove();
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

  //tabs
  $(function () {
    $('.tabs a:first').tab('show')
  })

  //more link appended to p
  $('.news-item-prev').each(function(i, j){
    $(j).find('p').append($(j).find('a.more').remove());
  });


  $('#body_content').append($('#search-form').remove());
  $('#right_side_body').append($('#side_body').html());
  $('ul.nav.navbar-nav').children('li').addClass('nav-li');

  nav_li = $("ul.navbar-nav li.nav-li");

  // width of navbar items
  $('ul.nav.navbar-nav').addClass('ul-no-margin');
  $('ul.nav.navbar-nav').css('width', '100%');
  var nav_width = 100.0/nav_li.length;
  nav_li.css('width', nav_width+'%');

  colors = ["green", "yello", "orange", "red", "blue", "lime", "purple"];
  reversed_colors = colors.slice(0).reverse();
  var li_count = 0;
  nav_li.each(function(i, j) {
    li_count++;
    $(j).addClass(colors[i % colors.length]);
    $(j).find('li').each(function(l, k) {
      $(k).addClass(reversed_colors[(l+i+2) % colors.length]);
      $(k).find('a').css('min-width', ($(k).parents('li.nav-li').width()-1)+'px');
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

  $(document).on('click', '.day-cell.pointer', function(e){
    var dsc = $(this).find('.event-preview').html();
    var title = $(this).find('.full-title').html();
    var link = $(this).find('.event-link').html();
    var eventModal = $('#event-modal');
    eventModal.find('.modal-title').html(title);
    eventModal.find('.modal-body').html(dsc+link);
    eventModal.modal();
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
  if($('form.job_form').length > 0){
    $('form.job_form').parsley();
  }

});

// $(window).resize(function() {
//   window.scrollTo(0, 0);
// });

$(window).load(function() {
  $('#side_body').remove;
});
