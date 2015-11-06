class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]

  def index
  end

  def show
    @profile_photo = @user.photos.find_by(is_main: true)
  end

  def new
    respond_to do |format|
      format.js
    end
  end

  def create
    @user = User.new(params[user_params])

    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @user.destroy
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  private
  def set_s3_direct_post
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
  end

  def user_params
    params.require(:login).permit(:username, :password, :email, :phone, :account_type, :first_name, :last_name, :name, :neighborhood_ids)
  end

end
