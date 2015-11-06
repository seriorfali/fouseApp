class LikesController < ApplicationController
  def index
  end

  def show
  end

  def create
    @like = Like.new()

    if @like.save
      respond_to do |format|
        format.js
      end
    else
      render :new
    end
  end

  def destroy
  end

end
