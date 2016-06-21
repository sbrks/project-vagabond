module SessionsHelper

  def login(user)
    session[:user_id] = user.id
    @current_user = user
    redirect_to "/users"
  end

  def logged_in?
    if current_user == nil
      redirect_to "/login"
    else
      redirect_to "/users"
    end
  end

  def logout
    @current_user = session[:user_id] = nil
    redirect_to "/logout"
  end

end
