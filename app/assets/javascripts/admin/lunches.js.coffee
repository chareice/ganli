check = $('#last_checked').val().split(',')

for c in check
    $("#lunch_mold_#{c}").prop('checked',true)