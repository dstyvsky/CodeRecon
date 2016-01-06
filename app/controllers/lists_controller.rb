class ListsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy, :update]
	
	def create
		@list = Interest.find_by_id(1).lists.build(list_params)
		if @list.save
			flash[:success] = "List Item created!"
			redirect_to code_recon_todo_path
		else
			render 'static_pages/home'
		end
	end

	def destroy
		List.find(params[:id]).destroy
		flash[:success] = "List Item deleted"
		redirect_to code_recon_todo_path
	end

	def update
		@list = List.find(params[:id])
		@list.toggle(:completed)
		@list.save
		redirect_to code_recon_todo_path
	end


	private

		def list_params
			params.require(:list).permit(:content)
		end
		

end