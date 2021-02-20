class SessionsController < ApplicationController

  def omniauth
    user = User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
      u.username = auth['info']['name']
      u.email = auth['info']['email']
      u.password = SecureRandom.hex(24)
    end
    if user.valid?
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
