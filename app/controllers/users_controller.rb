class UsersController < ApplicationController
  def index
  end

  def show
  end

  def add
    @user = User.new(params[user_params])
    RedirectToAction("Start_For_New", "Sessions")
  end

  def edit
  end

  def destroy
  end

  private
  def user_params
    params.require(:session).permit(:username, :first_name, :last_name, :email, :password)
  end
end
