$(document).ready ->
  $(".navbar #menu ul").addClass "nav navbar-nav"
  $("ul.navbar-nav").after $("#locale").html()
  $("#left_side_body, #right_side_body").addClass "col-md-2"

  #$('#body').addClass('col-md-8');
  ul = $("#left_side_body ul")
  theLoc = 275 #ul.offset().top - 20;
  left = ul.offset().left
  console.log theLoc
  $(window).scroll ->
    if theLoc >= $(window).scrollTop()
      ul.removeClass "fixed"  if ul.hasClass("fixed")
    else
      unless ul.hasClass("fixed")
        ul.addClass "fixed"
        ul.css "left", left


  $("#left_side_body ul li").html (i, h) ->
    h.replace /&nbsp;/g, ""

  $("#left_side_body ul li br").remove()


