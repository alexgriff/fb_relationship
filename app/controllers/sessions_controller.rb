class SessionsController < ApplicationController

  def login

  end

  def create
   user = User.find_by(username: params[:username])

  if user && user.authenticate(params[:password])
    session[:id] = user.id
    redirect_to user_path(user)
  else
    render :login
  end

  end

  def delete
    session.clear
    redirect_to login_path
  end
end
