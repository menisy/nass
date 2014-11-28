$(document).ready ->

  #gef left and right in place
  $('.right, .left').addClass('col-md-6')

  $('.navbar .active > a').css('background-color', 'inherit')
  $(".navbar #menu ul").addClass "nav navbar-nav"
  $("ul.navbar-nav").after $("#locale").html()
  $("#left_side_body, #right_side_body").addClass "col-md-2"
  $("#body").addClass "col-md-9"

  #$('#right_side_body').prepend($('#search-form').html())
  $('#body_content').append($('#search-form').remove())

  $('#right_side_body').append($('#side_body').html())
  nav_li = $("ul.navbar-nav li")
  colors = ["yello", "orange", "red", "blue", "lime", "purple"]
  nav_li.each (i, j) ->
    $(j).addClass('padd') unless i == 2 || i == 3
    $(j).addClass(colors[i%colors.length])

  #$('#body').addClass('col-md-8');
  ul = $("#left_side_body ul")
  theLoc = 275 #ul.offset().top - 20;

  $(".owl-carousel").owlCarousel({items: 1, slideSpeed: 200, autoPlay: true});

  # $(window).scroll ->
  #   if theLoc >= $(window).scrollTop()
  #     ul.removeClass "fixed"  if ul.hasClass("fixed")
  #   else
  #     unless ul.hasClass("fixed")
  #       left = ul.offset().left
  #       wd = $('body').width()
  #       left_p = left/wd * 100
  #       ul.addClass "fixed"
  #       ul.css "left", left_p+'%'
  #ul.sticky topSpacing: 20


  $("#left_side_body ul li").html (i, h) ->
    h.replace /&nbsp;/g, ""

  $("#left_side_body ul li br").remove()

# resize = ->
#   window.scrollTo 0, 0
# window.onresize = resize
# window.onzoom = resize

$(window).resize ->
  window.scrollTo 0, 0

$(window).load ->
  $('#side_body').remove
