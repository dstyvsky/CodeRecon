class StaticPagesController < ApplicationController
	
	def home
		@user = User.first
		@mypost = current_user.myposts.build if logged_in?

	end
end