users_list = $("#user-data").data("users")
audit_users = $("#audit_process").data("audit-user")
Object.keys = Object.keys || (o) ->
    result = []
    for name in o  
        if o.hasOwnProperty(name)
          result.push(name)
    return result

unless Array::filter
  Array::filter = (callback) ->
    element for element in this when callback(element)
list_user = (user)->
	"<li data-user-id='#{user.id}' >
		<span>#{user.name}</span>
		<a title='删除' class='delete-tag-btn'>x</a>
		<input value='#{user.id}' name='affair_form[audit_process][]' type='hidden' />
	</li>"
user_id_to_user = (id)->
	for user in users_list
		if user.id == id
			return user
audit_users_list = (ids)->
	#(list_user(user_id_to_user(parseInt(id))) for id in ids)
	#is this a bug for coffeescript?
	(user_id_to_user(parseInt(id)) for id in ids)

if $("#audit_process").data("audit-user")
	$("#audit_process").append (list_user(a) for a in audit_users_list(audit_users))
$(".delete-tag-btn").click ->
	$($(this).closest("li")).remove()
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
		user_id = $(this).data("user-id")
		selected_users = $("input[name='affair_form[audit_process][]']")
		for selected_user in selected_users
			if selected_user.value.toString() == user_id.toString()
				alert "已经选择了该用户"
				return false

		c_user = user_id_to_user(user_id)

		$("#audit_process").append list_user(c_user)
		$(".delete-tag-btn").click ->
			$($(this).closest("li")).remove()