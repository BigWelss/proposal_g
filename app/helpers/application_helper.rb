module ApplicationHelper
	def full_title(page_title = '')
	    base_title = "Pricing"
	    if page_title.empty?
	      base_title
	    else
	      page_title + " | " + base_title
	    end
	end

	def header(page_header = '')
		base_title = "Gerador de Proposta"
		if page_header.empty?
			base_title
		else
			page_header
		end
	end
end
