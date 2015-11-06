class FuildingsController < ApplicationController
  before_action :set_fuilding, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
  end

  def show
    @fousegroup = @fuilding.fousegroup
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_fuilding
    @fuilding = Fuilding.find(params[:id])
  end
end
