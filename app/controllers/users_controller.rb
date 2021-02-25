class UsersController < ApplicationController

  before_action :show, :redirect_non_users

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
    render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :uid, :provider, :password)
  end

  # may not be secure
  def redirect_non_users
    if current_user == nil
      redirect_to root_path, alert: "You do not have access to this user"
    end
  end
  
end

