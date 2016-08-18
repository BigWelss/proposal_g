class ApplicationController < ActionController::Base
	before_filter :set_cache_headers
  	protect_from_forgery with: :exception
  	
  	include SessionsHelper
  
  	private

  	def set_cache_headers
    	response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
    	response.headers["Pragma"] = "no-cache"
    	response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  	end
end
