//= require jquery
//= require jquery_ujs
//= require sugar
$(".close").click (e)->
	$(e.target).closest(".alert-box").slideUp()
	return false
$(".topic-c").hover(
	(e)-> $(this).addClass("current")
	(e)-> $(this).removeClass("current")
)
$("#captcha-img").click ->
	$("#captcha-img")[0].src = "/captcha?i=#{(new Date()).valueOf()}"
$(".cmt-do-quote").click ->
	c_content = $($(this).closest(".reply").find(".reply-content"))
	username = c_content.data("username")
	floor = c_content.data("floor")
	regex = /(<([^>]+)>)/ig
	i_html =  c_content.html().replace(regex," ").truncate(150)
	i_html = "<blockquote style='color: #999;font-size: 12px;margin: 10px 0;padding-left: 10px;border-left: 1px solid #d5d5d5;' >回复##{floor}楼 #{username} : #{i_html}</blockquote><p><br/></p>"
	editor.insertHtml i_html
