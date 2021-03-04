module ApplicationHelper

  # helper_method :display_link_to_current_user

  def current_user
    if @current_user
      @current_user
    else
      @current_user = User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !!current_user
  end

  def logged_and_current
    if logged_in?
      "You are logged in, view your synths here " + @current_user.username + "."
    end
  end
  
end


