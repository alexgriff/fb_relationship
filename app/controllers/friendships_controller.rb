class FriendshipsController < ApplicationController

  def create
    # byebug
    Friendship.create(user_id: current_user.id, friend_id: params[:friend_id])
    Friendship.create(user_id: params[:friend_id], friend_id: current_user.id)
    redirect_to user_path(current_user)
  end

end
