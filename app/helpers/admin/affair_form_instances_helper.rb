module Admin::AffairFormInstancesHelper
	def affair_form_types_radio(affairs,affair_form_type)
		if !!affair_form_type or affair_form_type == '0'
			html = content_tag(:input, nil, :type => "radio", :name => "affair_form_type", 
					:value => 0, :checked => "checked",:id => "affair_form_type_id_0")
		else
			html = content_tag(:input, nil, :type => "radio", :name => "affair_form_type", 
					:value => 0, :id => "affair_form_type_id_0")
		end
		
		html+=content_tag(:label, "全部", :for => "affair_form_type_id_0")
		affairs.each do |affair|
			if !!affair_form_type and affair_form_type.to_i == affair.id.to_i
				html+=content_tag(:input, nil, :type => "radio", :name => "affair_form_type", 
					:value => affair.id, :checked => "checked", :id => "affair_form_type_id_#{affair.id}")
			else
				html+=content_tag(:input, nil, :type => "radio", :name => "affair_form_type", 
					:value => affair.id, :id => "affair_form_type_id_#{affair.id}")
			end
			html+=content_tag(:label, affair.title, :for => "affair_form_type_id_#{affair.id}")
		end
		html.html_safe
	end
end
