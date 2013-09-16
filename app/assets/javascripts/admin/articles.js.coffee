$(".article-classification select").val($(".article-classification select").data("article-classification"))
thumb_show = ->
	has_thumb = $(".article-classification select option:selected").data("thumb-size")
	$(".article_thumb label").text("缩略图(无需展示的分类无需上传)")
	if has_thumb
		width = has_thumb.split(" ")[0]
		height = has_thumb.split(" ")[1]
		$(".article_thumb label").text("缩略图 请上传图片尺寸为 宽度:#{width}px,高度:#{height}px")

thumb_show()
$("#article_classification_id").change ->
	thumb_show()

$("#article_thumb").change ->
	url = window.URL || window.webkitURL
	chose = this.files[0]

	image = new Image()
	image.src = url.createObjectURL(chose)
	$(".article_thumb .thumb").html("")
	$(".article_thumb .thumb").html(image)
	$(".article_thumb .thumb").show()

$("#clear-thumb-button").click ->
	if confirm("确定删除缩略图？")
		$("#clear-thumb").val(1)
		$(".thumb").hide()
	return false
if $("#article_status").data("status")
	$("#article_status").val($("#article_status").data("status"))