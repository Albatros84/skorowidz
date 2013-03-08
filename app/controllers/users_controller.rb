class UsersController < ApplicationController
       
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      UserMailer.registration_confirmation(@user).deliver
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def edit
    @user = User.find(params[:id])    
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        UserMailer.edited_profile(@user).deliver
        format.html { redirect_to root_url, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def index
    @users = User.all       
  end

   def show
    @user = User.find(params[:id])
    UserMailer.recover_password(user).deliver
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

end
