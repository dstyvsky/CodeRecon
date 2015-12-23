class StaticPagesController < ApplicationController
	def home
		@user = User.first
		@myposts = @user.myposts
	end
end