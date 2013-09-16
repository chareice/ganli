$("#left_nav_thumb").change ->
	url = window.URL || window.webkitURL
	chose = this.files[0]

	image = new Image()
	image.src = url.createObjectURL(chose)
	$(".left_nav_thumb .thumb").html("")
	$(".left_nav_thumb .thumb").html(image)
	$(".left_nav_thumb .thumb").show()

$("#clear-thumb-button").click ->
	if confirm("确定删除缩略图？")
		$("#clear-thumb").val(1)
		$(".thumb").hide()
	return false