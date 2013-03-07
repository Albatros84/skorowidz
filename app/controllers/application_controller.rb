class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  
private

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
  
protected  
  
def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to have access to this page"
      redirect_to root_url
    end
  end
  
def logged_in?
    current_user
  end    
  
  
end
