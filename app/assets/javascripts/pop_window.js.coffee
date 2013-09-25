$("#pop-window-c .window-close").click ->
	$("#pop-window-c").slideUp()

get_notice = ->
	message_notice = "/admin/messages/new_message_notice"
	$.getJSON(message_notice,(data)->
		if data.messages.count > 0 or data.announcements.count >0
			$("#pop-window").html(list(data.announcements,data.messages))
			$("#pop-window-c").slideDown()
	)
#generate_html = (data)->
list = -> 
	for context in arguments
		if context.count > 0
			"<div class='pop-message'>
				<div class='pop-message-header'>#{context.name}</div>
				<ul>#{listItem(context)}</ul>
			 </div>"
listItem = (context)->
	for li in context.list
		"<li><a href='#{context.show_path}/#{li.id}/'>#{li.name}</a></li>"
get_notice()