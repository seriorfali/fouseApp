class SessionsController < ApplicationController
  def new
  end

  def start_for_existing
    @user = User.find_by(username: params[:session][:username])
    @developer = Developer.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:member_id] = @user.id.to_s
    elsif @developer && @developer.authenticate(params[:session][:password])
      session[:member_id] = @developer.id.to_s
    elsif params[:session][:type] == "Users"
      RedirectToAction("New", "Users")
    elsif params[:session][:type] == "Developer"
      RedirectToAction("New", "Developers")
    else
      redirect_to login_path
  end

  def start_for_new
  end

  def destroy
  end
end
