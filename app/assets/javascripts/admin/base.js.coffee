//= require jquery
//= require foundation
$(document).foundation()
$(".audit-process-contro .add").click (e)->
	$("#exist-group option:selected").appendTo("#affair_form_audit_process")
	e.preventDefault()
$(".audit-process-contro .remove").click (e)->
	$("#affair_form_audit_process option:selected").appendTo("#exist-group")
	e.preventDefault()
$(".edit_affair_form,new_affair_form").submit ->
	$("#affair_form_audit_process option").prop("selected","selected")