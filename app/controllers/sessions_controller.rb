class SessionsController < ApplicationController

  def omniauth
    user = User. create_from_omniauth(auth)

    if user.valid?
      session[:user_id] = user_id
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
