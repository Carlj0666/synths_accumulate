class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_mail(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:message] = "Please Try Again"
      redirect_to '/login'
    end
  end

  def omniauth
    user = User. create_from_omniauth(auth)

    if user.valid?
      session[:user_id] = user.id
      redirect_to new_synth_path
    else
      flash[:message] = user.errors.full_messages.join("")
      redirect_to synths_path
    end
  end

  private

  def auth
    request.env['omniauth.auth']
  end

end
