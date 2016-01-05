class ProjectsController < ApplicationController
	def code_recon_todo
		@list = Interest.find_by_id(1).lists.build if logged_in?

	end
	
end