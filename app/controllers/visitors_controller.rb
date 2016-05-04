class VisitorsController < ApplicationController
	layout "maintenance", :only => :maintenance
	
	before_action :set_my_content
	def home
	end

	def concept
	end

	def program
	end

	def about
	end

	def set_my_content
		@my_content = MyContent.last
	end

	def maintenance
	end
end
