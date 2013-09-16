module ApplicationHelper
	def truncate_u(text, length = 30, truncate_string = "...")
		l = 0
		char_array=text.unpack("U*")
		char_array.each_with_index do |c,i|
			l = l+ (c<127 ? 0.5 : 1)
			if l>=length
				return char_array[0..i].pack("U*")+(i<char_array.length-1 ? truncate_string : "")
			end
		end
		return text
	end

	def render_page_title
		site_name = "深圳市甘李学校"
		title = @page_title ? "#{site_name} | #{@page_title}" : site_name
		content_tag(:title,title)
	end

	def permission_action
		"#{controller_path}##{action_name}"
	end
end