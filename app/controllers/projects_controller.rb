class ProjectsController < ApplicationController

	def code_recon_todo
		@list = Interest.find_by_id(1).lists.build if logged_in?

	end

	def aggregate_todo
		@list = Interest.find_by_id(2).lists.build if logged_in?
	end

	def knowledge_center
		@list = Interest.find_by_id(3).lists.build if logged_in?
	end

	def wuds
		session[:mobile_view] = true
		@comment = Interest.find_by_id(4).comments.build if logged_in?
	end
	
end