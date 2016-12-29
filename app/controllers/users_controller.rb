class UsersController < ApplicationController
  before_action :set_user

  def index
    @users = User.order('created_at DESC').paginate(page: params[:page], per_page: 30)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end


end
