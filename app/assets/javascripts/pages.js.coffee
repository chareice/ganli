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
$(".friendly-links-select").change ->
	link = this.value
	if link
		window.open link
	else
		return false
window.SetHome = (obj, vrl) ->
  try
    obj.style.behavior = "url(#default#homepage)"
    obj.setHomePage vrl
  catch e
    if window.netscape
      try
        netscape.security.PrivilegeManager.enablePrivilege "UniversalXPConnect"
      catch e
        alert "此操作被浏览器拒绝！\n请在浏览器地址栏输入“about:config”并回车\n然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。"
      prefs = Components.classes["@mozilla.org/preferences-service;1"].getService(Components.interfaces.nsIPrefBranch)
      prefs.setCharPref "browser.startup.homepage", vrl
window.AddFavorite = (sURL, sTitle) ->
  try
    window.external.addFavorite sURL, sTitle
  catch e
    try
      window.sidebar.addPanel sTitle, sURL, ""
    catch e
      alert "加入收藏失败，请使用Ctrl+D进行添加"
$(".search form").submit ->
	q = $("#search").val().trim().length
	if q == 0
		alert("请输入搜索关键词")
		$("#search").val("")
		$("#search").focus()
		return false
if $("#captcha-img").length > 0
	$("#captcha-img")[0].src = "/captcha?i=#{(new Date()).valueOf()}"