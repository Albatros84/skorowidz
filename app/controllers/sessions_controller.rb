class SessionsController < ApplicationController
  def new
  end
 
  #def create
    #user = User.authenticate(params[:email], params[:password])
    #if user
      #session[:user_id] = user.id
     # redirect_to projects_path, :notice => "Logged in!"
    #else
     # flash.now.alert = "Invalid email or password"
    #  render "new"
   # end
  #end
 
  
   def create
     user = User.find_by_email(params[:email],params[:password])
  if user && user.authenticate(params[:email],params[:password])
    if params[:remember_me]
      cookies.permanent[:auth_token] = user.auth_token
    else
      cookies[:auth_token] = user.auth_token
    end
    redirect_to projects_url, :notice => "Logged in!"
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
end
  
  #def destroy
   # session[:user_id] = nil
   # redirect_to root_url, :notice => "Logged out!"
  #end
  
  def destroy
    cookies.delete(:auth_token)
    redirect_to root_url, :notice => "Logged out!"
  end
  
end
