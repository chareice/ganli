users_list = $("#user-data").data("users")
Object.keys = Object.keys || (o) ->
    result = []
    for name in o  
        if o.hasOwnProperty(name)
          result.push(name)
    return result

unless Array::filter
  Array::filter = (callback) ->
    element for element in this when callback(element)

Array::where = (query, matcher = (a,b) -> a is b) ->
    return [] if typeof query isnt "object"
    hit = Object.keys(query).length
    @filter (item) ->
        match = 0
        for key, val of query
            match += 1 if matcher(item[key], val)
        if match is hit then true else false

$("#groups_select_list li").click ->
	$("#groups_select_list li").removeClass("active")
	$(this).addClass("active")
	group_id =  $(this).data("group-id")
	users = users_list.filter (x) -> x.group_id == group_id
	$("#users_select_list").html("")
	if users.length > 0
		users_li = ("<li data-user-id=#{user.id}>#{user.name}</li>" for user in users)
		html = users_li.join("")
	else
		html = "该组下无用户"
	$("#users_select_list").html(html)
	$("#users_select_list li").click ->
		$("#users_select_list li").removeClass("active")
		$(this).addClass("active")
		user_id = $(this).data("user-id")
		for user in users_list
			if user.id == user_id
				c_user = user
				break
		$("#receiver-preview").text(c_user.name)
		$("#message_receiver").val(user_id)

$(".message_content a.ke-insertfile").click (e)->
	downpath = $(".message_content").data("download")
	this.href = downpath + $(this).attr("href")