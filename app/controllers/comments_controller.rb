class CommentsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]
	def create
		@comment = current_user.comments.build(comment_params)
		if @comment.save
			flash[:success] = "Comment added!"
			redirect_to :back
		else
			flash[:failure] = "not yet"
			render 'projects/wuds'
		end
	end
	def show
		@comment = Comment.find(params[:id])

	end

	private
		def comment_params
			params.require(:comment).permit(:saying, :interest_id)
		end
end
