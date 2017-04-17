class UsersController < ApplicationController

  def index
    @users = User.all.reject do |user|
      user == current_user
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end
end
