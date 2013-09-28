//= require jquery
//= require jquery_ujs
$(".close").click (e)->
	$(e.target).closest(".alert-box").slideUp()
	return false
$(".topic-c").hover(
	(e)-> $(this).addClass("current")
	(e)-> $(this).removeClass("current")
)
$("#captcha-img").click ->
	$("#captcha-img")[0].src = "/captcha?i=#{(new Date()).valueOf()}"