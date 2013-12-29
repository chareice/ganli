//= require jquery
//= require jquery_ujs
//= require foundation
//= require kindeditor

$(document).foundation()
$(".audit-process-contro .add").click (e)->
	$("#exist-group option:selected").appendTo("#affair_form_audit_process")
	e.preventDefault()
$(".audit-process-contro .remove").click (e)->
	$("#affair_form_audit_process option:selected").appendTo("#exist-group")
	e.preventDefault()
$(".edit_affair_form,new_affair_form").submit ->
	$("#affair_form_audit_process option").prop("selected","selected")

$(".audit_users .user_pass").click (e)->
	tar = $ e.target
	tr = $ tar.closest('tr')
	select = $(tr.find('select')).val()
	if select == "0"
		alert "请分配用户组"
		e.preventDefault()
		return
	$(".user_pass").text("请耐心等待用户通过审核！勿重复点击")
	$.ajax {
		type: "POST",
		url: e.target.href,
		data:{
			"user[id]" : tr.data("user-id"),
			"user[group]" : select,
			"authenticity_token": $("#csrf_token").val()
			},
		success: (data) ->
			if data == "success"
				alert "审核通过"
				location.reload()
	}
	e.preventDefault()
$(".audit_users .user_delete").click (e)->
	tar = $ e.target
	tr = $ tar.closest('tr')
	$.ajax {
		type: "POST",
		url: e.target.href,
		data:{
			"type": "ajax",
			"user[id]" : tr.data("user-id"),
			"_method" : "DELETE",
			"authenticity_token": $("#csrf_token").val()
			},
		success: (data) ->
			if data == "success"
				alert "删除成功"
				location.reload()
	}
	e.preventDefault()
$(".close").click (e)->
	$(e.target).closest(".alert-box").slideUp()
	return false