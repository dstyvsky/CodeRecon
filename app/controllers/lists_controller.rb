class ListsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy, :update]


	def create
		@list = List.new(list_params)
		@list.save
		redirect_to :back
		

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
		redirect_to :back
	end


	private

		def list_params
			params.require(:list).permit(:content, :interest_id)
		end
		

end