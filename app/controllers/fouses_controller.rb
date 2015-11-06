class FousesController < ApplicationController
  before_action :set_fouse, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
  end

  def create
  end

  def show
    @fuilding = @fouse.fuilding
    @fousegroup = @fuilding.fousegroup
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_fouse
    @fouse = Fouse.find(params[:id])
  end
end
