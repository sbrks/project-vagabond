module SessionsHelper

  def login(user)
    session[:user_id] = user.id
    @current_user = user
    redirect_to "/sessions"
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    if current_user == nil
      redirect_to "/sign_in"
    else
      redirect_to "/sessions"
    end
  end

  def logout
    @current_user = session[:user_id] = nil
    redirect_to "/"
  end

end
