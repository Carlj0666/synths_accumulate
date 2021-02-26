module ApplicationHelper

  def current_user
    if @current_user #this ensures we don't check the db uneccisarily 
      @current_user
    else
      @current_user = User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !!current_user #could use session[:user_id] method from above here too
  end

  def logged_and_current
    if logged_in?
      "Logged in as: " + @current_user.username
    end
  end

  def logged_in_with_access
    if current_user != nil || logged_in? == true
      true
    else
      false
    end
  end

end
