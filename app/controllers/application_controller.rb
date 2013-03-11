#!/usr/local/bin/ruby
# coding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  #force_ssl
  
  
private

#def current_user
#  @current_user ||= User.find(session[:user_id]) if session[:user_id]
#end
  
  def current_user
    @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
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

def require_admin_login
    unless admin_logged_in?
      flash[:error] = "You must be logged in as admin to have access to this page"
      redirect_to root_url
    end
  end
  
  def admin_logged_in?
    if current_user
      current_user.role.eql?('admin')
    end   
  end  
end
