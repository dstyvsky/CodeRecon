class UsersController < ApplicationController

  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user, only: [:edit, :update]

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
      @user.send_activation_email
  		flash[:info] = "Please check your email to activate your account."
      redirect_to root_path

  	else 
  		render 'new'
  	end
  end


  def edit
    @user = User.find(params[:id])
    
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_back_or root_url
    else
      render 'edit'
    end
  end

  private

  	def user_params
  		params.require(:user).permit(:name, :email, :password, 
  																 :password_confirmation)
  	end


    def correct_user
      @user= User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

end
