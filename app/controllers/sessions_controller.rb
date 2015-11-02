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
    elsif params[:session][:type] == "Fouser"
      RedirectToAction("Add", "Users")
    elsif params[:session][:type] == "Developer"
      RedirectToAction("Add", "Developers")
    else
      redirect_to login_path
  end

  def start_for_new
    if params[session_type_params] == "Fouser"
      session[:member_id] = @user.id.to_s
    elsif params[session_type_params] == "Developer"
      session[:member_id] = @developer.id.to_s
  end

  def destroy
  end

  private
  def session_type_params
    params.require(:session).permit(:type)
  end
end
