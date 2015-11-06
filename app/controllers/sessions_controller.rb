class SessionsController < ApplicationController
  def new
    respond_to do |format|
      format.js
    end
  end

  def create
    @user = User.find_by(username: params[:login][:username])
    if @user && @user.authenticate(params[:login][:password])
      session[:user_id] = @user.id.to_s
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

end
