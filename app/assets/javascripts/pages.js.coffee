$(".go_register").click ->
	location.href = '/register'
	return false
$(".primary-nav .top_nav").hover(
		(e)-> $(this).addClass("active")
		(e)-> $(this).removeClass("active")
	)

$(".image-show-header ul li:first").addClass("active")
$(".image-show-article-c:first").addClass("active")
$(".image-show-header ul li").hover (e)->
	$(".image-show-header ul li").removeClass("active")
	$(".image-show-article-c").removeClass("active")
	target = $(e.target)
	target.addClass("active")
	image_show = "image-show-#{target.data('classification-id')}"
	$("##{image_show}").addClass("active")
$("#captcha-img").click ->
	$("#captcha-img")[0].src = "/captcha?i=#{(new Date()).valueOf()}"
	return false