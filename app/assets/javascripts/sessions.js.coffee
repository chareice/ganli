$("#captcha-img").click ->
	$("#captcha-img")[0].src = "/captcha?i=#{(new Date()).valueOf()}"
	return false