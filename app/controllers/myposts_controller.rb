class MypostsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

	def create
		@mypost = current_user.myposts.build(mypost_params)
		if @mypost.save
			flash[:success] = "Mypost created!"
			redirect_to root_url
		else
			render 'static_pages/home'
		end
	end

	def destroy
	end

	def show
		@mypost = Mypost.first

	end


	private

		def mypost_params
			params.require(:mypost).permit(:content)
		end
		
end
