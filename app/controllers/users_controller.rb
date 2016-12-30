class UsersController < ApplicationController
  before_action :set_user

  def index
    @users = User.order('created_at DESC').paginate(page: params[:page], per_page: 30)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :pic_url, :email, :password, :password_confirmation, :role)
  end

end
