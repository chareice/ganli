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
	console.log link
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