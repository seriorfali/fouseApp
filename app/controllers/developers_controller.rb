class DevelopersController < ApplicationController
  def index
  end

  def show
  end

  def add
    @developer = Developer.new(params[developer_params])
    RedirectToAction("Start_For_New", "Sessions")
  end

  def edit
  end

  def destroy
  end

  private
  def developer_params
    params.require(:session).permit(:username, :name, :email, :password)
  end
end
