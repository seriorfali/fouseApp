class FousegroupsController < ApplicationController
  before_action :set_fousegroup, only: [:show, :edit, :update, :destroy]

  def index
    @top_fousegroups = Fousegroup.all.order(:popularity).first(20)
  end

  def show
  end

  def new
    @fousegroup = Fousegroup.new
  end

  def create
    @fousegroup = Fousegroup.new(fousegroup_params)

    if @fousegroup.save
      redirect_to @fousegroup
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @fousegroup.update(fousegroup_params)
      redirect_to @fousegroup
    else
      render :edit
    end
  end

  def destroy
    @fousegroup.delete
    redirect_to :back
  end

  private
  def set_fousegroup
    @fousegroup = Fousegroup.find(params[:id])
  end

  def fousegroup_params
    params.require(:fousegroup).permit(:name, :community_type, :style)
  end
end
